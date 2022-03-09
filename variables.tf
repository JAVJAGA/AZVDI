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

variable "type" {
  type        = string
 description = "Type of Hostpool, your host pool will be Personal or Pooled" 
 default = "Pooled"
  
}
variable "prefix" {
  type        = string
  description = "Prefix of the name of the AVD machine(s)"  
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
variable "resourcegroupname" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}
variable "prefix_vm" {
  type        = string
  description = "Prefix of the name of the AVD machine(s)"  
}

variable "rdsh_count" {
  type        = string
  description = " Number of Virtual machines to deploy"
}

variable "vm_size" {
  type        = string
  description = " Size of Virtual machines to deploy"
}

variable "subnet_id" {
  type        = string
 description = "id of subnet where deploy the Virtual Machines"

}


variable "vm_os_disk_delete_flag" {
  default = true
}

variable "vm_data_disk_delete_flag" {
  default = true
}

variable "networksecuritygroup_id" {
description = "ID of the Network Security Group"  
type        = string
}

variable "vm_image_id" {
  description = "ID of the custom image to use"
}

variable "vm_publisher" {
   description = "**OPTIONAL**: Publisher of the vm image"
}


variable "vm_offer" {
  description = "**OPTIONAL**: Offer of the vm image"
 type        = string
}

variable "vm_sku" {
  description = "**OPTIONAL**: Sku of the vm image"
  type        = string
}

variable "vm_version" {
  description = "**OPTIONAL**: Version of the vm image"
  type        = string
}

variable "vm_timezone" {
  description = "The vm_timezone of the vms"
 type        = string
}


variable "azure_key_vault_name"{
  type = string 
  description= "keyvault name"
}

variable "azure_key_vault_resource_group_name" {
  type = string
  description= "key_vault_resource_group_name"
}

variable "localadminpasswordkv_id"{
  type = string  
}


 variable "localadminuserkv_id"{
  type = string
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