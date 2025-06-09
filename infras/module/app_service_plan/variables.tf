variable "app_service_plan_name" {
  description = "The name of the App Service Plan to be created. Must be globally unique."
  type        = string

}

variable "resource_group_name" {
  description = "The name of the resource group where the App Service Plan will be created."
  type        = string

}
variable "location" {
  description = "The Azure region where the App Service Plan will be created."
  type        = string

}
variable "tier" {
  description = "The pricing tier for the App Service Plan (e.g., Free, Basic, Standard, Premium)."
  type        = string
  default     = "Standard"
}
variable "size" {
  description = "The size of the App Service Plan (e.g., S1, S2, P1v2)."
  type        = string
  default     = "S1"
}
