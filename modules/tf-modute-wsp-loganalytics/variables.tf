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

