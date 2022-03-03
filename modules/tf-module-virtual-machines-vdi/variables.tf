#Variables Virtual Machines


variable "resourcegroupname" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
}

variable "azure_location" {
  description = "Location in which to deploy these resources"
  type        = string 
}




variable "prefix" {
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

variable "tags"{
  type        = map(any)
  description = "(Optional) A mapping of tags which should be assigned to the resource."
  default     = {}
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

variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = null
}

