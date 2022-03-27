# Desktop Application Group Variables

variable "ResourceGroupName" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string  
}

variable "azure_location" {
  description = "The Azure Region in which all resources should be created."
  type        = string 
}

variable "log_analytics_name" {
  description = "The Name of log_analytics"
  type        = string 
}

variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
}

variable "log_analytics_workspace_id" {
  description = "Workspace ID of the Log Analytics Workspace to associate the VMs with"
}

variable "log_analytics_workspace_primary_shared_key" {
  description = "Primary Shared Key of the Log Analytics Workspace to associate the VMs with"
}


variable "extension_loganalytics" {
  description = "**OPTIONAL**: Should Log Analytics agent be attached to all servers"
  default     = "true"
}

variable "vm_ids" {
  type        = list(string)
  description = "Id´s of Virtual Machines" 
}

variable "extension_optimize" {
  description = "**OPTIONAL**: Should  be attached to all servers"
  default     = "true"
}