resource "azurerm_virtual_desktop_workspace" "workspace" {
  name                = var.workspace_name
  location            = var.azure_location
  resource_group_name = var.resourcegroupname
  friendly_name       = var.friendlynameworkspace
  description         = var.descriptionworkspace

tags = {
    Cloud_Provider = "AZ"
    Environment = "PRO"
    Owner      = "TECNOLOGIA-IF"
    Proyect    = "SRS_21000191"
    Proyect_Description = "MIGRATION_VDI_AZURE"
    Region = "EUWEST"
  }


}

