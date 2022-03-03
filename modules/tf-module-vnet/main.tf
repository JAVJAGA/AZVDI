


resource "azurerm_virtual_network" "vnet"{
    name = local.Name
    location = var.azure_location
    resource_group_name  = var.ResourceGroupName
    address_space = var.vnet_address_space
    dns_servers = var.DNS_Servers
    tags = var.tags
    depends_on = [
      var.Depending_Resource_id
    ]
}

