#Variables Extenssions


variable "ResourceGroupName" {
    type = string 
    description = "Name of the resource group where the vnet resource will be deployed"
}
variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"
    default = "westeurope"
}

variable "prefix" {
  type        = string
  description = "Prefix of the name of the AVD machine(s)"
}

variable "rdsh_count" {
  type        = string
  description = "**OPTIONAL**: Number of WVD machines to deploy"
  default = ""  
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