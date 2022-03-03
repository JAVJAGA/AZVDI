output "id" {
  value = azurerm_log_analytics_workspace.wslog_analytics.id
}

output "wsloganalytics_id" {
  value = azurerm_log_analytics_workspace.wslog_analytics.workspace_id
}

output "primary_shared_key" {
  value = azurerm_log_analytics_workspace.wslog_analytics.primary_shared_key
  sensitive = true
}

