

variable "resource_group_scaling_plan" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}

variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"
}  

variable "scaling_plan_name"{
    type = string
    description = "scaling plan name"
}  

variable "scaling_plan_friendly_name"{
    type = string
    description = "scaling_plan-friendly_name"
}  

variable "scaling_plan_description"{
    type = string
    description = "scaling_plan-description"
}  

variable "hostpool_id" {
  description = "Id of the Hostpool"
  type        = string 
}

variable "wslog_analytics_id" {
  description = "ID of the Log Analytics to associate the Scaling Paln with it"
}