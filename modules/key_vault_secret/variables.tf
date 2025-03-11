variable "secret_name" {
  description = "The name of the secret."
  type        = string
}

variable "secret_value" {
  description = "The value of the secret."
  type        = string
}

variable "key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
}