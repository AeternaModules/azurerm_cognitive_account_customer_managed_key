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
  validation {
    condition = alltrue([
      for k, v in var.cognitive_account_customer_managed_keys : (
        v.identity_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.identity_client_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

