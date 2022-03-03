# Desktop Application Group Variables

variable "resourcegroupname" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string  
}

variable "azure_location" {
  description = "The Azure Region in which all resources should be created."
  type        = string 
}


variable "deskappgroup_name" {
  type        = string
  description = "Name of the Desktop Application Group"
}

variable "type" {
  type        = string
  description = "Type of Desktop Application Group"
 
}

variable "desktopappfriendlyname" {
  description = "Host Pool Desktop App Group Friendly Name"
  type        = string  
}


variable "desktopappdescription" {
  description = "Host Pool Desktop App Group Description"
  type        = string  
}

variable "hostpool_id" {
  type       = string
  description = "ID of HostPool  where deploy Desktop App Group"
}


variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment"
    default = null
}

variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
}
