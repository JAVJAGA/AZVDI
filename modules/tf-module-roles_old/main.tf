
data  "azuread_group" "aad_group"{ # Name of an existing  Azure Ad Group to WVDI
  display_name = var.display_name_group
}



data "azurerm_role_definition" "role" { # access an existing built-in role
  name = var.role_definition
}




# Assign Azure AD users/groups to App Groups
resource "azurerm_role_assignment" "wvd_role_assignment" {
  scope                = var.dag_id
  role_definition_id   = data.azurerm_role_definition.role.id
  principal_id         = var.principal_ids
}