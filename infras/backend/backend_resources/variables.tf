variable "backend_resource_group_name" {
  description = "The name of the resource group where the backend resources will be created."
  type        = string

}

variable "backend_storage_account_name" {
  description = "The name of the storage account for the backend."
  type        = string
}

variable "location" {
  description = "The Azure region where the backend resources will be created."
  type        = string
}
