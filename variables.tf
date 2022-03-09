variable "resourcegroupname" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}

variable "azure_location"{
    type = string
    description = "(Optional). Specifies the supported Azure location where the resource exists"
}    

variable "hostpool_name" {
  description = "Name of the Hostpool"
  type        = string 
}
variable "prefix" {
  type        = string
  description = "Prefix of the name of the AVD machine(s)" 
}


variable "type" {
  type        = string
 description = "Type of Hostpool, your host pool will be Personal or Pooled" 
 default = "Pooled"
  
}

variable "loadbalancertype" {
   type        = string
  description = "Type of load balancer for Hostpool can be BreadthFirst or DepthFirst"
}

variable "pooledhpmaxsessions" {
  description = "Max sessions per pooled host"
  type        = number  
}

variable "deskappgroup_name" {
  type        = string
  description = "Name of the Desktop Application Group"
}

variable "appgroup_type" {
  type        = string
  description = "Type of Desktop Application Group"
  
}

variable "pooledhpdesktopappfriendlyname" {
  description = "Pooled Host Pool Desktop App Group Friendly Name"
  type        = string  
}


variable "pooledhpdesktopappdescription" {
  description = "Pooled Host Pool Desktop App Group Description"
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
variable "workspace_id"{
    type = string
    description = "Id of Workspace create"
}

variable "deskappgroup_id"{
    type = string
    description = "Id of Desktop Application Group create"
}
/*************************************/
# Provider Variables
/*************************************/

variable "client_id" {
}
variable "client_secret" {
}
variable "subscription_id" {
}
variable "tenant_id" {
}