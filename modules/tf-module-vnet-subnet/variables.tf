# Required Variables fot Subnet   

# Global variables to use with the resources

variable "ResourceGroupName" {
    type = string
    description = "Nsme of the resource group where the vnet resource will be deployed"
}

variable "vnet_name"{
    type = string
    description = "Name of the VNET where create the Subnet"
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}

variable "subnet_name" {
    type            = string
    description     = "(Required) Subnet Name."
}

 variable "subnet_address_space"{
     type           = list(string)
     description    = "CIDR address space for the subnet"
     
 }




    