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
variable "resourcegroupname_vm" {
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

variable "resourcegroupname_wla" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string  
}


variable "log_analytics_name" {
  description = "The Name of log_analytics"
  type        = string 
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
  
#variable "regtoken" {
#  description = "Host Pool Registration Token" 
# type        = string 
#}

variable "resource_group_scaling_plan_id" {
  description = "id of the Resource group in which to deploy these resources"
  type        = string 
}
variable "resource_group_scaling_plan" {
  description = "Name of the Resource group in which to deploy these resources"
  type        = string 
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

variable "principal_ids" {
  description = "The ID of the principal that is to be assigned the role at the given scope. Can be User, Group or SPN"
}

variable "dag_id" {
  description = "The Id of the desktop application group where the role should be assigned"
  type        = string
}
variable "role_definition" {
  description = "Definition Role to Active directory group"
  type        = string
}

variable "display_name_group" {
  description = "display name of active directory security group what must access to resources"
  type        = string
}


variable "storage_account_id" {
  description = "The Id of the Storage Account where the role should be assigned"
  type        = string
}



#variable "role_definition_resource_id" {
#  description = "Id of role_definition_resource"
#  type        = string 
#}


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