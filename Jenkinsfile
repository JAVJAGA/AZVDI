pipeline {
    agent any
    tools {
        "org.jenkinsci.plugins.terraform.TerraformInstallation" "terraform"
    }
    environment {
        LB_CREDENTIALS = 'credential_id'
        FN_CREDENTIALS = 'credential_id'
        TEMP_CREDENTIALS = 'credential_id'
    }
     parameters {
        choice(name: 'environment', choices: ['DEV', 'UAT', 'PROD'], description: 'Environment (DEV / UAT / PROD)')
    }

    stages {
        stage('Test') {
            steps {
                script {
                    switch (params.environment) {
                        case 'DEV':
                            TEMP_CREDENTIALS = FN_CREDENTIALS
                            break
                        case 'UAT':
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                            break  
                        case 'PROD':
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                            break                       
                        default:
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                            break
                    }
                }
                withCredentials([azureServicePrincipal(TEMP_CREDENTIALS)]) {
                    script {
                        env.ARM_CLIENT_ID = AZURE_CLIENT_ID
                        env.ARM_CLIENT_SECRET = AZURE_CLIENT_SECRET
                        env.ARM_TENANT_ID = AZURE_TENANT_ID
                        env.ARM_SUBSCRIPTION_ID = AZURE_SUBSCRIPTION_ID
                    }
                    sh """
                        cd test
                        pwsh -File runner.tests.ps1 -ClientSecret ${ARM_CLIENT_SECRET} -ClientId ${ARM_CLIENT_ID} -TenantId ${ARM_TENANT_ID} -SubscriptionId ${ARM_SUBSCRIPTION_ID} -Environment ${params.environment}
                        cd ..
                    """
                    nunit testResultsPattern: 'test/policies.tests-results.xml', failedTestsFailBuild: true
                }
            }
        }

        stage('Deploy') {
            
            steps {
                script {
                    switch (params.environment) {
                        case 'DEV':
                            TEMP_CREDENTIALS = FN_CREDENTIALS
                            break
                        case 'UAT':
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                        case 'PROD':
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                            break                        
                        default:
                            TEMP_CREDENTIALS = LB_CREDENTIALS
                            break
                    }
                }
                withCredentials([azureServicePrincipal(TEMP_CREDENTIALS)]) {
                    script {
                        env.ARM_CLIENT_ID = AZURE_CLIENT_ID
                        env.ARM_CLIENT_SECRET = AZURE_CLIENT_SECRET
                        env.ARM_TENANT_ID = AZURE_TENANT_ID
                        env.ARM_SUBSCRIPTION_ID = AZURE_SUBSCRIPTION_ID
                    }
                    sh """
                     cp -f backend-${params.environment}/backend-${params.environment}.tfvars.tpl .
                    terraform version
                    terraform init -no-color -backend-config="backend-${params.environment}.tfvars.tpl"
                    terraform plan -no-color -out tfplan -var-file="terraform-${params.environment}.tfvars.tpl" -var client_secret=${ARM_CLIENT_SECRET} \
                            -var subscription_id=${ARM_SUBSCRIPTION_ID} \
                            -var tenant_id=${ARM_TENANT_ID} \
                            -var client_id=${ARM_CLIENT_ID}
                    terraform apply -no-color -auto-approve -input=false tfplan
                    """
                }
            }
        }
    }
    post {
        // Clean after build
        always {
            cleanWs(cleanWhenNotBuilt: true,
                    deleteDirs: true,
                    disableDeferredWipeout: false,
                    notFailBuild: true,
                    patterns: [[pattern: '.gitignore', type: 'INCLUDE'],
                               [pattern: '.propsfile', type: 'EXCLUDE']])
        }
    }
}