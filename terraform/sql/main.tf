resource "azurerm_sql_server" "example" {
  name                         = "mssqlserver"
  resource_group_name          = var.azure-rg-1
  location                     = var.loc1
  version                      = "12.0"
  administrator_login          = "SQLAdmin"
  administrator_login_password = var.sqlpwd
}