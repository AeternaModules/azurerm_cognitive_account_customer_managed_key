output "cognitive_account_customer_managed_keys_id" {
  description = "Map of id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognitive_account_customer_managed_keys_cognitive_account_id" {
  description = "Map of cognitive_account_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.cognitive_account_id if v.cognitive_account_id != null && length(v.cognitive_account_id) > 0 }
}
output "cognitive_account_customer_managed_keys_identity_client_id" {
  description = "Map of identity_client_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.identity_client_id if v.identity_client_id != null && length(v.identity_client_id) > 0 }
}
output "cognitive_account_customer_managed_keys_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all cognitive_account_customer_managed_keys, keyed the same as var.cognitive_account_customer_managed_keys"
  value       = { for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}

