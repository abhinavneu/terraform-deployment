#Resource Groups
resource "azurerm_resource_group" "rg1" {
  name     = var.azure-rg-1
  location = var.loc1
  tags = {
    Environment = var.environment_tag
  }
}

module "keyvault" {
  depends_on = [azurerm_resource_group.rg1]
  source = "./kv"
  azure-rg-1 = var.azure-rg-1
  loc1 = var.loc1
  kvname = var.kvname
  environment_tag = var.environment_tag
}

module "storage_account" {
  depends_on = [module.keyvault]
  source = "./strg"
  azure-rg-1 = var.azure-rg-1
  loc1 = var.loc1
  strgname = module.keyvault.strg_name
}

module "sql_server" {
  depends_on = [module.keyvault]
  source = "./sql"
  azure-rg-1 = var.azure-rg-1
  loc1 = var.loc1
  sqlname = var.sqlname
  kvid = module.keyvault.kv_id
}

#backend
terraform {
  backend "azurerm" {
    resource_group_name  = "neu-dev-data-rg"
    storage_account_name = "neutstadlsgen2"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}