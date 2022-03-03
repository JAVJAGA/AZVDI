terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.83"
    }
  }
}

provider "azurerm" {
  features {}
}
