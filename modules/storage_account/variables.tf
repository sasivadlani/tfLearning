variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
}

variable "location" {
  type        = string
  description = "The location of the storage account."
}

variable "account_tier" {
  type        = string
  description = "The tier of the storage account."
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account."
}