resource "azurerm_virtual_network_peering" "peering" {
    name = var.name
    resource_group_name = var.ResourceGroupName
    virtual_network_name = var.VirtualNetworkName
    remote_virtual_network_id = var.RemoteVirtualNetworkId
    allow_virtual_network_access = var.AllowVirtualNetworkAccess
    allow_forwarded_traffic = var.AllowForwardedTraffic
    allow_gateway_transit = var.AllowGatewayTransit
    use_remote_gateways = var.UseRemoteGateway
    depends_on = [
      var.Depending_Resource_id
    ]
}