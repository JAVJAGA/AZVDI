# Associate Desktop Application Group with Workspace
resource "azurerm_virtual_desktop_workspace_application_group_association" "workspacedesktop" {
   workspace_id         = var.workspace_id
   application_group_id = var.deskappgroup_id
}


