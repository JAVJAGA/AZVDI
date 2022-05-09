resource "azurerm_monitor_diagnostic_setting" "avd-logs" {
    name = "diag-prod-jvn-avd-hp"
    target_resource_id = var.hostpool_id
    log_analytics_workspace_id = var.wslog_analytics_id
    
   log {
    category = "Error"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Checkpoint"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Management"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Connection"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "HostRegistration"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "AgentHealthStatus"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "NetworkData"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "SessionHostManagement"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
}
resource "azurerm_monitor_diagnostic_setting" "fd-logs" {
  name = "diag-prod-jvn-avd-fd"
  target_resource_id = var.deskappgroup_id
  log_analytics_workspace_id = var.wslog_analytics_id 
  
  log {
    category = "Checkpoint"
    enabled = "true"

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Error"
    enabled = "true"

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Management"
    enabled = "true"

    retention_policy {
      enabled = false
    }
  }
}
resource "azurerm_monitor_diagnostic_setting" "avd-ws-logs" {
  name = "diag-prod-jvn-avd-ws"
  target_resource_id =  var.workspace_id
  log_analytics_workspace_id = var.wslog_analytics_id
  
   log {
    category = "Error"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Checkpoint"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Management"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
  log {
    category = "Feed"
    enabled  = true

    retention_policy {
      enabled = false
    }
  }
}