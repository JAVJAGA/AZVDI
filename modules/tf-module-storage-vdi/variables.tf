# Storage Variables

variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"   
}


variable "storage_rg_name" {
  description = " Resource Group Storage"
  type        = string 
}

variable "account_tier" {
  description = "account storage tier"
  type        = string 
}
variable "account_replication_type" {
  description = "account storage replication type"
  type        = string 
}
variable "account_kind" {
  description = "account storage kind"
  type        = string 
}
variable "principal_ids" {
  description = "The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN"
  type        = string  
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
    error_message   = "(Required) The environment specified must be one of the allowed values (dev, pre, pro, int, avd)."
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



variable "resource"{
    type            = string
    description     = "Allowed resource nomenclature"
        validation {
      condition     = contains(["nsg","exr","exg","vpng","vnet","nic","snet","rt","pip","fw","adf","stg","dl","adb","sqlser","sqldb","apn","azr","aml","kv","lga","hostpool"], var.resource)
      error_message = "The allowed values for resource type are: nsg,exr,exg,vpng,vnet,nic,snet,rt,pip,fw,adf,stg,dl,adb,sqlser,sqldb,apn,azr,aml,kv,lga."
    }
}

variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment"
    default = null
}

#
# Locals Variables

locals {
    storage_name = "${lower(var.company)}${lower(var.cloudprovider)}${lower(var.environment)}${lower(var.region)}${lower(var.service)}${lower(var.resource)}"
}