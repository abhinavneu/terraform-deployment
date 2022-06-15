output "strg_name" {
  value       = "neuterr4588"
  description = "Storage Account Name"
}

output "kv_id" {
  value = "${azurerm_key_vault.kv1.id}"
  description = "Key Vault ID"
}