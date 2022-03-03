#Variables Roles

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


variable "Depending_Resource_id" {
    type = string
    description = "Resource from depend the deployment. "
    default = "null"
}
