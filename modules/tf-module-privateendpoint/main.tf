
resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.private_dns_zone_name
  resource_group_name = var.storage_rg_name
 
}


resource "azurerm_private_endpoint" "pendpoint" {
  name                = var.pendpoint_name
  location            = var.azure_location
  resource_group_name = var.storage_rg_name
  subnet_id           = var.subnet_id
  depends_on           = [azurerm_private_dns_zone.private_dns]

  private_dns_zone_group {
    name                 = var.private-dns-zone-group
    private_dns_zone_ids = [azurerm_private_dns_zone.private_dns.id]
  }


  private_service_connection {
    name                              = var.privateserviceconnection_name
    is_manual_connection              = false
    private_connection_resource_id    = var.account_storage_id
    subresource_names = ["file"]
  }
}