


resource "azurerm_network_security_group" "nsg"{
    name                = local.NSG_Name
    location            = var.azure_location
    resource_group_name = var.resource_group_name

    tags = var.tags

    depends_on = [
      var.Depending_Resource_id
    ]

}