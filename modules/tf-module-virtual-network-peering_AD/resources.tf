data "azurerm_virtual_network" "Hub_vnet_data" {
  name                = var.vnethub_name
  resource_group_name = var.hubresourcegroupname
}

resource "azurerm_virtual_network_peering" "peer1" {
  name                         = "PeerAvd01toHub"
  resource_group_name          = var.ResourceGroupName
  virtual_network_name         = var.vnet_name
  remote_virtual_network_id    = var.vnethub_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  use_remote_gateways          = true
  
  
  
}
resource "azurerm_virtual_network_peering" "peer2" {
  name                         = "PeerHubtoAvd01"
  resource_group_name          = var.hubresourcegroupname
  virtual_network_name         = var.vnethub_name
  remote_virtual_network_id    = var.vnet_id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = true
  
}