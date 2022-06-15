output "strg_name" {
  value       = "neuterr4588"
  description = "Storage Account Name"
}

output "secret_value" {
  value = "${data.azurerm_key_vault_secret.sqlpassword.value}"
}