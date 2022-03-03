output "wvd_role_assignment_id" {
  value = azurerm_role_assignment.wvd_role_assignment.id
}


output "principal_ids" {
  value = data.azuread_group.aad_group.id
}
