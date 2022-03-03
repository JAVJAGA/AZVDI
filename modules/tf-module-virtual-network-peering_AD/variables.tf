#Variables virtual-network-peering


variable "ResourceGroupName" {
    type = string
    description = "Nsme of the resource group where the vnet resource will be deployed"
}

variable "hubresourcegroupname" {
    type = string
    description = "Name of the resource group where the HUb vnet resource is deployed"
}

variable "vnethub_name"{
    type = string
    description = "Name of the VNET HUB"
}


variable "vnet_name"{
    type = string
    description = "Nombre de la Vnet donde esta  Azure VDI"
}

variable "vnet_id"{
    type = string
    description = "Name of the VNET where create the Subnet"

}

variable "vnethub_id"{
    type = string
    description = "id of the hub VNET"
}




