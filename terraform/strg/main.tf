resource "azurerm_storage_account" "example" {
  name                     = var.strgname
  resource_group_name      = var.azure-rg-1
  location                 = var.loc1
  account_tier             = "Standard"
  account_replication_type = "LRS"
}