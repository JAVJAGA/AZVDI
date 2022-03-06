terraform {
    required_providers  {
        azurerm =   {
            source  =   "hashicorp/azurerm"
        }
    }
}

# Provider Block

provider "azurerm" {
    version         =   "~> 2.0"
    client_id       =   var.client_id
    client_secret   =   var.client_secret
    subscription_id =   var.subscription_id
    tenant_id       =   var.tenant_id
    
    features {}
}








module "resource-group"{
    source = "./modules/tf-module-resource-group"
    azure_location = "westeurope"

    # Variables for naming convention"
    company="wz"
    cloudprovider = "az"
    environment = "prod"
    region ="uewe"
    service = "WVDVDI"
    instance = "01"
    tags = {
        Country = "ES"
    }

}

