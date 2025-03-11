variable "container_name" {
  type        = string
  description = "The name of the storage container."
}

variable "container_access_type" {
  type        = string
  description = "The access type for the container."
  default     = "private"
}

variable "storage_account_id" {
  type        = string
  description = "The ID of the storage account."
  
}