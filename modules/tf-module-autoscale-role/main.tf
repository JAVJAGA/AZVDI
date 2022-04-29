resource "azurerm_role_definition" "avd-autoscale" {
  name        = "AVD-AutoScale"
  scope       = var.resource_group_scaling_plan_id
  description = "AVD AutoScale Role"
  permissions {
    actions = [
      "Microsoft.Insights/eventtypes/values/read",
      "Microsoft.Compute/virtualMachines/deallocate/action",
      "Microsoft.Compute/virtualMachines/restart/action",
      "Microsoft.Compute/virtualMachines/powerOff/action",
      "Microsoft.Compute/virtualMachines/start/action",
      "Microsoft.Compute/virtualMachines/read",
      "Microsoft.DesktopVirtualization/hostpools/read",
      "Microsoft.DesktopVirtualization/hostpools/write",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/read",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/write",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/delete",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/read",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/sendMessage/action",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/usersessions/read"
    ]
    not_actions = []
  }
  assignable_scopes = [
    var.resource_group_scaling_plan_id,
  ]
}
data "azuread_service_principal" "avd-sp" {
  display_name = "Windows Virtual Desktop Client"
}

resource "random_uuid" "avd-sp-custom-role" {
}

resource "azurerm_role_assignment" "avd-sp-custom-role" {
  name                             = random_uuid.avd-sp-custom-role.result
  scope                            = var.resource_group_scaling_plan_id
  role_definition_id              = azurerm_role_definition.avd-autoscale.role_definition_resource_id
  #role_definition_id               = var.role_definition_resource_id
  principal_id                     = data.azuread_service_principal.avd-sp.id
  skip_service_principal_aad_check = true
}



