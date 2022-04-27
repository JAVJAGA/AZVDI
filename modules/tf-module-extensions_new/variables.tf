#Variables Extenssions


variable "resourcegroupname" {
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

variable "domain_joined" {
 type        = string 
  description = "**OPTIONAL**: Should the machine join a domain"
  default     = "true"
}

variable "domain_name" {
  type        = string 
  description = "**OPTIONAL**: Name of the domain to join"
}

variable "oupath" {
  type        = string   
  description = "OU path to us during domain join"
  default = ""
}

variable "domainadminpasswordkv_id"{
  type = string
   description = "Id of secret of domain password admin "   
  }

 variable "domainadminuserkv_id"{
  type = string
   description = "Id of secret of domain user admin" 
  }
  
variable "extension_optimize" {
  description = "**OPTIONAL**: Should  be attached to all servers"
  default     = "true"
}

variable "hostpool_id" {
  type        = string 
  description = "Host Pool Id to Register Session Hosts" 
  default = ""
 }

variable "regtoken" {
  description = "Host Pool Registration Token" 
 type        = string 
 
}

variable "hostpoolname" {
  type        = string 
  description = "Host Pool Name to Register Session Hosts" 
    }

variable "extension_custom_script" {
  type        = string   
  description = "**OPTIONAL**: Should a custom script extension be run on all servers"
  default     = "false"
}


variable "extensions_custom_command" {
  type        = string 
  description = "**OPTIONAL**: Command for the custom script extension to run"
  default     = ""
}

variable "publisher" {
  description = "Extension Publisher"
  type        = string
  default     = "Microsoft.Powershell"
}

variable "type" {
  type        = string
  default     = "DSC"
}

variable "type_handler_version" {
 type        = string 
 default = ""
}

variable "auto_upgrade_minor_version" {
  type        = string 
  default = "true"
}

variable "artifactslocation" {
  description = "Location of WVD Artifacts" 
  default = "https://wvdportalstorageblob.blob.core.windows.net/galleryartifacts/Configuration_3-10-2021.zip"
}
