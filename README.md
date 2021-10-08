# ASPNET APPSERVICE MODULE

- An Azure AppService module for ASPNET Framework v4.0 with SQL Server

## Usage

```

resource "random_string" "password" {
  length  = 8
  special = true
}

resource "random_string" "name" {
  length  = 4
  special = false
}

module "web_app" {
  source = "github.com/webmasterdevlin/aspnet-appservice-module"

  resource_group_name   = var.resource_group_name
  location              = var.location
  sql_server_version    = var.sql_server_version
  sku                   = var.sku
  environment           = var.environment
  admin_login           = var.admin_login
  admin_pass            = coalesce(var.admin_pass, random_string.password.result)
  app_service_name      = coalesce(var.app_service_name, "${random_string.name.result}app")
  app_settings_value    = coalesce(var.app_settings_value, random_string.password.result)
  app_service_plan_name = coalesce(var.app_service_plan_name, "${random_string.name.result}sp")
  sql_server_name       = coalesce(var.sql_server_name, "${random_string.name.result}sql")
  sql_database_name     = coalesce(var.sql_database_name, "${random_string.name.result}db")
}

# config.tfvars

resource_group_name   = "my-resource-group-1"
location              = "West Europe"
app_settings_value    = "my-secret-value"
sql_server_version    = "12.0"
environment           = "production"
admin_login           = "yourname"
admin_pass            = "v3ry_Uniqu3Pa$$w0rd"
app_service_name      = "yourwebapp"
app_service_plan_name = "yoursp"
sql_server_name       = "yourdbserver"
sql_database_name     = "youdb"


sku = {
  tier = "Standard"
  size = "S1"
}

```
