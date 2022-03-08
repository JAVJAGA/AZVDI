module "main" {
  source = "../../"

  providers = {
    azurerm = azurerm.mgs-fixture
  }
  client_id                = var.client_id
  client_secret            = var.client_secret
  subscription_id          = var.subscription_id
  tenant_id                = var.tenant_id
  level1_management_groups = var.level1_management_groups
  level2_management_groups = var.level2_management_groups
  level3_management_groups = var.level3_management_groups
  level4_management_groups = var.level4_management_groups
  level5_management_groups = var.level5_management_groups
}
