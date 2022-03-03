#Create Desktop Application Group
resource "azurerm_virtual_desktop_application_group" "dag" {
  name                = var.deskappgroup_name
  location            = var.azure_location
  resource_group_name = var.resourcegroupname
  type                = var.type
  host_pool_id         =var.hostpool_id
  friendly_name       = var.desktopappfriendlyname
  description         = var.desktopappdescription



}
