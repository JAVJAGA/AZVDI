# Variables para el recurso de tipo Peering entre VNETS
variable "name"{
    type = string
    description = "The name of the virtual network peering"
}

variable "ResourceGroupName" {
    type = string
    description = "The name of the resource group in which to create the virtual network peering"
}

variable "VirtualNetworkName" {
    type = string
    description = "The name of the virtual network. "
}

variable "RemoteVirtualNetworkId" {
    type = string
    description = "The full Azure resource ID of the remote virtual network"
}

variable "AllowVirtualNetworkAccess" {
    type = string
    description = "Controls if the VMs in the remote virtual network can access VMs in the local virtual network"
    default = null
}

variable "AllowForwardedTraffic" {
    type = string
    description = "Controls if forwarded traffic from VMs in the remote virtual network is allowed"
    default = null
}

variable "AllowGatewayTransit" {
    type = string
    description = "Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network"
    default = null
}

variable "UseRemoteGateway" {
    type = string
    description = "Controls if remote gateways can be used on the local virtual network"
    default = null
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}