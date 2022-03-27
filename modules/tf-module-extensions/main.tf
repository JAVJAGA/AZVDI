resource "azurerm_virtual_machine_extension" "LogAnalytics" {
  count                      = "${var.extension_loganalytics ? var.rdsh_count : 0}"
  name                       = "${var.prefix}${format("%003d", count.index + 1)}-LogAnalytics"
  virtual_machine_id         =  element(concat(var.vm_ids, [""]), count.index)
  publisher                  = "Microsoft.EnterpriseCloud.Monitoring"
  type                       = "MicrosoftMonitoringAgent"
  type_handler_version       = "1.0"
  auto_upgrade_minor_version = true

  settings = <<SETTINGS
	{
	    "workspaceId": "${var.log_analytics_workspace_id}"
	}
SETTINGS

  protected_settings = <<protectedsettings
  {
      "workspaceKey": "${var.log_analytics_workspace_primary_shared_key}"
  }
  protectedsettings
}

resource "azurerm_virtual_machine_extension" "optimize" {
  count                      = "${var.extension_optimize ? var.rdsh_count : 0}"
  name                       = "${var.prefix}${format("%003d", count.index + 1)}-LogAnalytics"
  virtual_machine_id         =  element(concat(var.vm_ids, [""]), count.index)
  publisher            = "Microsoft.Compute"
  type                 = "CustomScriptExtension"
  type_handler_version = "1.9"

  protected_settings = <<PROTECTED_SETTINGS
    {
      "commandToExecute": "powershell.exe -Command \"C:\\optimize\\Win10_VirtualDesktop_Optimize.ps1 -Accepteula -WindowsVersion 21H2 -restart -Verbose"
    }
  PROTECTED_SETTINGS

}








