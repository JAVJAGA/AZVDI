variable "resourcegroupname" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}

variable "azure_location" {
  description = "The Azure Region in which all resources should be created."
  type        = string  
}

variable "friendlynameworkspace" {
  description = "Friendly Workspace Name"
  type        = string  
}

variable "descriptionworkspace" {
  description = "Description Workspace Name"
  type        = string  
}

variable "workspace_name" {
  type        = string
  description = "Name of Workspace"
}



variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
}

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}