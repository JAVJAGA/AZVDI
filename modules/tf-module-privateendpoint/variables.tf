# Storage Variables

variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"   
}


variable "storage_rg_name" {
  description = " Resource Group Storage"
  type        = string 
}

variable "account_storage_id" {
  description = "id account Storage"
  type        = string 
}

variable "subnet_id"{
    type = string
    description = "Id of the subnet where create the private endpoint"
}

variable "pendpoint_name"{
    type = string
    description = "Name of the Private Endpoint"
}
variable "private_dns_zone_name"{
    type = string
    description = "Name of the Private Dns Zone"
}

variable "private-dns-zone-group"{
    type = string
    description = "Name of the Private Dns Zone"
}

variable "privateserviceconnection_name"{
    type = string
    description = "private service connection name"
}


