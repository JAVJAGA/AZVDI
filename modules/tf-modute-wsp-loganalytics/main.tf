#Create log analytics workspace
resource "azurerm_log_analytics_workspace" "wslog_analytics" {
  name                = var.log_analytics_name
  location            = var.azure_location
  resource_group_name = var.ResourceGroupName
  sku                 = "PerGB2018"
  retention_in_days   = 30



}
