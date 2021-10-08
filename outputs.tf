output "app_service_name" {
  value       = azurerm_app_service.as.name
  description = "The name of App Service"
}

output "app_service_default_hostname" {
  value       = "https://${azurerm_app_service.as.default_site_hostname}"
  description = "The hostname of App Service"
}

output "sql_server_name" {
  value       = azurerm_sql_server.ss.name
  description = "The name of SQL Server"
}

output "sql_database_name" {
  value       = azurerm_sql_database.sd.name
  description = "The name of SQL Database"
}
