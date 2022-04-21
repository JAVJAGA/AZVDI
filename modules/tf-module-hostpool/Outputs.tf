output "id" {
  value = azurerm_virtual_desktop_host_pool.hostpool.id
}

output "regtoken" {
 value = azurerm_virtual_desktop_host_pool.registration_info.hostpool[0].token
   sensitive = true
}

output "name" {
  value = azurerm_virtual_desktop_host_pool.hostpool.name
}