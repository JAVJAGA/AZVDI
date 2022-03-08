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
/*************************************/
# Management Group Variables
/*************************************/

variable "level1_management_groups" {
  type = map
}
variable "level2_management_groups" {
  type = map
}
variable "level3_management_groups" {
  type = map
}
variable "level4_management_groups" {
  type = map
}
variable "level5_management_groups" {
  type = map
}
