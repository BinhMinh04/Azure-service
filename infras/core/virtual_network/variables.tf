variable "virtual_network_name" {
  description = "The name of the Azure Virtual Network to be created. Must be globally unique."
  type        = string
  
}
variable "resource_group_name" {
  description = "The name of the resource group where the Virtual Network will be created."
  type        = string
}
variable "location" {
  description = "The Azure region where the Virtual Network will be created."
  type        = string
}
variable "address_space" {
  description = "The address space for the Virtual Network in CIDR notation."
  type        = list(string)
  default     = []
}
variable "dns_servers" {
  description = "A list of DNS server IP addresses for the Virtual Network."
  type        = list(string)
  default     = []
}
