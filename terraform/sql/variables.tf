variable "azure-rg-1" {
  type        = string
  description = "resource group 1"
}
variable "loc1" {
  description = "The location for this Lab environment"
  type        = string
}
variable "sqlname" {
  description = "SQL Server Name"
  type        = string
}
variable "kvid" {
  description = "Key Vault ID"
  type        = string
}