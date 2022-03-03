
resource "azurerm_subnet" "subnetep" {
    resource_group_name  = var.ResourceGroupName
    name                 = var.subnet_name
    virtual_network_name = var.vnet_name
    address_prefixes     = var.subnet_address_space
    depends_on = [
      var.Depending_Resource_id
    ]


}