variable "azure_location"{
    type = string
    description = "Specifies the supported Azure location where the resource exists"
}
 
variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
}


variable "company" {
    type        = string
    description = "Name of the company"
}

variable "cloudprovider"{
    type        = string
    description ="Cloud Provider"
    validation{
        condition = contains(["aw","az","gc","oc"], var.cloudprovider)
        error_message = "(Required) The provider specified must be one of the allowed values (aw, az, gc, oc)."
    }
}

variable "environment" {
  type              = string
  description       = "environment short name"
  validation {
    condition       = contains(["dev", "prod", "uat", "avd"], var.environment)
    error_message   = "(Required) The environment specified must be one of the allowed values (dev, prod, uat, avd)."
  }
}

variable "region"{
    type            = string
    description     = "Azure region"
   
}

variable "service" {
    type            = string
    description     = "Service to which the resource belongs"
}

variable "instance" {
    type            = string
    description     = "Number of instance"
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}

#
# Variables locales

locals {
    resource_group_name = "RG-${upper(var.company)}-${upper(var.cloudprovider)}-${upper(var.environment)}-${upper(var.region)}-${upper(var.service)}-${upper(var.instance)}"
}