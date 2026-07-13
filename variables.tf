variable "cognitive_account_customer_managed_keys" {
  description = <<EOT
Map of cognitive_account_customer_managed_keys, attributes below
Required:
    - cognitive_account_id
    - key_vault_key_id
Optional:
    - identity_client_id
EOT

  type = map(object({
    cognitive_account_id = string
    key_vault_key_id     = string
    identity_client_id   = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cognitive_account_customer_managed_key's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: cognitive_account_id
  #   source:    [from cognitiveservicesaccounts.ValidateAccountID] !ok
  # path: cognitive_account_id
  #   source:    [from cognitiveservicesaccounts.ValidateAccountID] err != nil
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: identity_client_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

