terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.83.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "dede9626-4a0a-4c08-954d-62f462d4af72"
  client_id       = "4d240c3a-6b8f-4702-b8aa-a0b69e8e0229"
  client_secret   = "8IE7Q~61~Ss3ZCKSxwBXffV0gDFTHGFaPfamu"
  tenant_id       = "350d072b-d849-4df7-93bf-d5593556851d"
}
# Configure automatically store tfstate files in a Azure Storage Account
remote_state {
  backend = "azurerm"
  config = {
    resource_group_name  = "rg_storagetfstate"
    storage_account_name = "stgprosegu"
    container_name       = "tfstate1"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    subscription_id      = "dede9626-4a0a-4c08-954d-62f462d4af72"
    tenant_id            = "350d072b-d849-4df7-93bf-d5593556851d"
  }

stages {  
   

         stage ("terraform init") {
            steps {
                sh ("terraform init") 
                
       

        stage ("terraform plan") {
            steps {
                sh ('terraform plan')  --var-file="tfvarsfile" -out filename
            }
        }

        stage ("terraform apply") {
            steps {
                sh ('terraform apply') -auto-approve filename
            }
        }
    }
}