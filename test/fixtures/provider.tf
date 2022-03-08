provider "azurerm" {
  alias   = "mgs-fixture"
  version = "=2.18.0"
  features {}
  skip_provider_registration = true
  tenant_id                  = var.tenant_id
  subscription_id            = var.subscription_id
  client_id                  = var.client_id
  client_secret              = var.client_secret
}
