variable "key_vault_name" {
  description = "The name of the Key Vault."
  type        = string
}

variable "location" {
  description = "The location of the Key Vault."
  type        = string
  default = "southcentralus"
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the Key Vault."
  type        = string
  default     = "standard"
}
