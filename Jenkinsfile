pipeline{
    agent any 
    tools {
        "org.jenkinsci.plugins.terraform.TerraformInstallation" "terraform"
    }
    environment {
        TF_WORKSPACE = 'default' //Sets the Terraform Workspace
        TF_IN_AUTOMATION = 'true'               
               // KEYVAULT_URL = credentials('azure_keyvault_url') # keyVaultURL not able to be dereferenced with ${env.KEYVAULT_URL}, keeping for future reference

    }

      parameters {


        string(name: 'AZURE_KEYVAULT_URL', defaultValue: 'https://packkeyvault2.vault.azure.net')

    }

    
    
    stages {
    
        stage('Terraform Init'){

            options {
              azureKeyVault(
                credentialID: 'credential_id',
                keyVaultURL: "${params.AZURE_KEYVAULT_URL}",
                secrets: [
                    [envVariable: 'BACKEND_STORAGE_ACCOUNT_NAME', name: 'BACKEND-STORAGE-ACCOUNT-NAME', secretType: 'Secret'],
                    [envVariable: 'BACKEND_STORAGE_ACCOUNT_CONTAINER_NAME', name: 'BACKEND-STORAGE-ACCOUNT-CONTAINER-NAME', secretType: 'Secret'],
                    [envVariable: 'BACKEND_KEY', name: 'BACKEND-KEY', secretType: 'Secret'],
                    [envVariable: 'RG_NAME', name: 'RG-NAME', secretType: 'Secret'],
                    [envVariable: 'ARM_ACCESS_KEY', name: 'BACKEND-ACCESS-KEY', secretType: 'Secret']
                ]
              )
            }

            steps {
                    ansiColor('xterm') {
                    withCredentials([azureServicePrincipal(
                    credentialsId: 'credential_id',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                )]) {
                        dir("modules") {
                        sh """
                        echo "Initialising Terraform"
                        terraform init -backend-config="access_key=$ARM_ACCESS_KEY"-backend-config="storage_account_name=$BACKEND_STORAGE_ACCOUNT_NAME" -backend-config="container_name=$BACKEND_STORAGE_ACCOUNT_CONTAINER_NAME" -backend-config="key=$BACKEND_KEY" -backend-config="resource_group_name=$RG_NAME"
                        """
                        }
                     }
                }
             }
        }

  

        stage('Terraform Plan'){
            options {
              azureKeyVault(
                credentialID: 'credential_id',
                keyVaultURL: "${params.AZURE_KEYVAULT_URL}",
                secrets: [
                    [envVariable: 'BACKEND_STORAGE_ACCOUNT_NAME', name: 'BACKEND-STORAGE-ACCOUNT-NAME', secretType: 'Secret'],
                    [envVariable: 'BACKEND_STORAGE_ACCOUNT_CONTAINER_NAME', name: 'BACKEND-STORAGE-ACCOUNT-CONTAINER-NAME', secretType: 'Secret'],
                    [envVariable: 'BACKEND_KEY', name: 'BACKEND-KEY', secretType: 'Secret'],
                    [envVariable: 'RG_NAME', name: 'RG-NAME', secretType: 'Secret'],
                    [envVariable: 'ARM_ACCESS_KEY', name: 'BACKEND-ACCESS-KEY', secretType: 'Secret']
                ]
              )
            }
            
            
            steps {

                    ansiColor('xterm') {
                    withCredentials([azureServicePrincipal(
                    credentialsId: 'credential_id',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                ), string(credentialsId: 'access_key', variable: 'ARM_ACCESS_KEY')]) 
                        
                        dir("modules") {
                        sh """
                        echo "Creating Terraform Plan"
                        terraform plan 
                        """
                        }
                }
            }
        }

        stage('Waiting for Approval'){
            steps {
                timeout(time: 10, unit: 'MINUTES') {
                    input (message: "Deploy the infrastructure?")
                }
            }
        
        }
    

        stage('Terraform Apply'){
            steps {
                    ansiColor('xterm') {
                    withCredentials([azureServicePrincipal(
                    credentialsId: 'redential_id',
                    subscriptionIdVariable: 'ARM_SUBSCRIPTION_ID',
                    clientIdVariable: 'ARM_CLIENT_ID',
                    clientSecretVariable: 'ARM_CLIENT_SECRET',
                    tenantIdVariable: 'ARM_TENANT_ID'
                ), string(credentialsId: 'access_key', variable: 'ARM_ACCESS_KEY')]) {

                        sh """
                        echo "Applying the plan"
                        terraform apply -auto-approve -var "client_id=$ARM_CLIENT_ID" -var "client_secret=$ARM_CLIENT_SECRET" -var "subscription_id=$ARM_SUBSCRIPTION_ID" -var "tenant_id=$ARM_TENANT_ID"
                        """
                                }
                }
            }
        }

    }
}
