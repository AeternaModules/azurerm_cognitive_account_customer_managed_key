output "cognitive_account_customer_managed_keys_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.cognitive_account_id }
}
output "cognitive_account_customer_managed_keys_identity_client_id" {
  description = "Map of identity_client_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.identity_client_id }
}
output "cognitive_account_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.key_vault_key_id }
}

