output "cognitive_account_customer_managed_keys" {
  description = "All cognitive_account_customer_managed_key resources"
  value       = azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys
}
output "cognitive_account_customer_managed_keys_cognitive_account_id" {
  description = "List of cognitive_account_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : v.cognitive_account_id]
}
output "cognitive_account_customer_managed_keys_identity_client_id" {
  description = "List of identity_client_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : v.identity_client_id]
}
output "cognitive_account_customer_managed_keys_key_vault_key_id" {
  description = "List of key_vault_key_id values across all cognitive_account_customer_managed_keys"
  value       = [for k, v in azurerm_cognitive_account_customer_managed_key.cognitive_account_customer_managed_keys : v.key_vault_key_id]
}

