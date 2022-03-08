# Create "Pooled" WVD Host Pool
resource "azurerm_virtual_desktop_host_pool" "hostpool" {
  location                 = var.azure_location
  resource_group_name      = var.resourcegroupname
  name                     = var.hostpool_name
  friendly_name            = "${var.prefix} HostPool"
  description              = "${var.prefix} HostPool"
  type                     = var.type
  load_balancer_type       = var.loadbalancertype
  maximum_sessions_allowed = var.pooledhpmaxsessions
  custom_rdp_properties    = "audiocapturemode:i:1;audiomode:i:0;camerastoredirect:s:*"

}

 resource "azurerm_virtual_desktop_host_pool_registration_info" "registration_info"{
    expiration_date = time_rotating.avd_token.rotation_rfc3339
  }


resource "time_rotating" "avd_token" {
rotation_days = 28
}