variable "resource_group_scaling_plan_id" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}



variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"
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
variable "role_definition_resource_id" {
  description = "Id of role_definition_resource"
  type        = string 
}
