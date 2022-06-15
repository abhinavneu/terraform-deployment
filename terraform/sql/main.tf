data "azurerm_key_vault_secret" "kvsecret" {
  name         = "sqlpassword"
  key_vault_id = var.kvid
}

resource "azurerm_sql_server" "example" {
  name                         = var.sqlname
  resource_group_name          = var.azure-rg-1
  location                     = var.loc1
  version                      = "12.0"
  administrator_login          = "SQLAdmin"
  administrator_login_password = data.azurerm_key_vault_secret.kvsecret.value
}