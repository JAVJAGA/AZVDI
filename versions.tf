terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.84"
    }
  }
  required_version = ">= 0.12.24"
  backend "azurerm" {}
 
}


provider "azurerm" {
  features {}
  skip_provider_registration = true
}





