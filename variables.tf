variable "resource_group_name" {
  description = "The prefix used for all resources in this example"
}

variable "location" {
  description = "The Azure location where all resources in this example should be created"
}

variable "app_service_name" {
  description = "The name of the Web App"
}

variable "app_service_plan_name" {
  description = "The name of the app service plan"
}

variable "sql_server_name" {
  description = "The name of the sql server instance"
}

variable "sql_server_version" {
  default     = "12.0"
  description = "The version of the sql server instance"
}

variable "sql_database_name" {
  description = "The name of the sql database instance"
}

variable "app_settings_value" {
  description = "value for the app setting key"
}

variable "admin_login" {
  description = "login name"
}

variable "admin_pass" {
  description = "password"
}

variable "sku" {
  type = object({ tier = string, size = string })
  default = {
    size = "S1"
    tier = "Standard"
  }
  description = "The SKU of the apps service plan"
}

variable "environment" {
  default     = "Development"
  description = "environment"
}
