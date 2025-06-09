variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the storage account will be created."
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account to be created. Must be globally unique."
  type        = string
}
