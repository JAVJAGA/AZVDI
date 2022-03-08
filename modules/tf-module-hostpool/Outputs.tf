output "id" {
  value = azurerm_virtual_desktop_host_pool.hostpool.id
}

output "regtoken" {
 value = azurerm_virtual_desktop_host_pool.hostpool.registration_info[0].token
   sensitive = true
}

output "name" {
  value = azurerm_virtual_desktop_host_pool.hostpool.name
}