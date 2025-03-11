variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "resource_group_location" {
  type        = string
  description = "The location of the resource group."
  default     = "southcentralus"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "account_tier" {
  type        = string
  description = "The tier of the storage account."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account."
  default     = "LRS"
}

variable "container_name" {
  type        = string
  description = "The name of the storage container."
}

variable "container_access_type" {
  type        = string
  description = "The access type for the container."
  default     = "private"
}

variable "passwordLength" {
  description = "Length of the random password"
  type        = number
  default     = 16
}

variable "number_of_passwords" {
  description = "Number of random passwords to generate"
  type        = number
  default     = 1
}

variable "key_vault_names" {
  type        = set(string)
  description = "Set of key vault names"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of the key vault."
  default     = "standard"
}

variable "secret_name" {
  description = "Name of the secret to be stored in Key Vault"
  type        = string
  default     = "generated-password"
}
