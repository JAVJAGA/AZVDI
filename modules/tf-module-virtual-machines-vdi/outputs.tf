output "vm_ids" {
value = azurerm_virtual_machine.windows_vm[*].id

}

output "vm_name" {
  value = azurerm_virtual_machine.windows_vm.*.name
}

