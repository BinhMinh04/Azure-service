variable "location" {
  description = "The Azure region where the virtual network will be created."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual network will be created."
  type        = string
}
variable "dns_servers" {
  description = "The DNS servers for the virtual network."
  type        = list(string)
  default     = []
}
variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = []
}
variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}
variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
  default     = []
}

variable "subscription_id" {
  description = "The Azure subscription ID where the resources will be created."
  type        = string
}
