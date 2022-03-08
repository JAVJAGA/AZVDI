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