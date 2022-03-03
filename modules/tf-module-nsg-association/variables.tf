#variables network-security-group-association

variable "subnet_id"{
    type = string
    description = "Id of Subnet"
}



variable "networksecuritygroup_id"{
    type = string
    description = "Id of the security group for the new rule"
}



variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = "null"
}
