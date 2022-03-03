

resource "azurerm_resource_group" "rg" {
  name =  local.resource_group_name
  location = var.azure_location
  tags = var.tags
  depends_on = [
    var.Depending_Resource_id
  ]
}