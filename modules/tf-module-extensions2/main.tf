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

depends_on = [azurerm_virtual_machine_extension.registersessionhost]
}


# VM Extension for Domain-join


resource "azurerm_virtual_machine_extension" "domain_joined" {
  count                      = "${var.domain_joined ? var.rdsh_count : 0}"
  name                       = "${var.prefix}${format("%003d", count.index + 1)}-domainJoin"
  virtual_machine_id         =  element(concat(var.vm_ids, [""]), count.index)
  publisher                  = "Microsoft.Compute"
  type                       = "JsonADDomainExtension"
  type_handler_version       = "1.3"
  auto_upgrade_minor_version = true



  settings = <<SETTINGS
    {
        "Name": "${var.domain_name}",
        "OUPath": "${var.oupath}",
        "User" : "${data.azurerm_key_vault_secret.domainadminuserkvsecret.value}",
        "Restart": "true",
        "Options": "3"
    }
    SETTINGS

  protected_settings = <<PSETTINGS
    {
      "Password" : "${data.azurerm_key_vault_secret.domainadminpasswordkvsecret.value}"
    }
    PSETTINGS

  

  lifecycle {
    ignore_changes = [ settings, protected_settings ]
  }
}
 
 data "azurerm_key_vault" "kv" {
  name                = var.azure_key_vault_name
  resource_group_name = var.azure_key_vault_resource_group_name
}

  data "azurerm_key_vault_secret" "domainadminpasswordkvsecret" {
  name         = "domainadminpassword"
  key_vault_id = var.domainadminpasswordkv_id
}

  data "azurerm_key_vault_secret" "domainadminuserkvsecret" {
  name         = "domainadminuser"
  key_vault_id = var.domainadminuserkv_id
  }



resource "azurerm_virtual_machine_extension" "registersessionhost" {
  count                   = "${var.rdsh_count}"
  name                    = "${var.prefix}${format("%003d", count.index + 1)}-wvd_dsc"
  virtual_machine_id      = element(concat(var.vm_ids, [""]), count.index)
  publisher               = "Microsoft.Powershell"
   type = "DSC"
  type_handler_version = "2.83"
  auto_upgrade_minor_version = true
  settings = <<-SETTINGS
    {
        "ModulesUrl": "${var.artifactslocation}",
        "ConfigurationFunction" : "Configuration.ps1\\AddSessionHost",
        "properties": {
            "HostPoolName": "${var.hostpoolname}"
          
      }   
    }
SETTINGS


  protected_settings = <<PROTECTED_SETTINGS
  {
    "properties": {
      "RegistrationInfoToken": "${var.regtoken}"
    }
  }
PROTECTED_SETTINGS

  depends_on = [
    azurerm_virtual_machine_extension.domain_joined]
}









