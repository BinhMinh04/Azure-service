variable "app_service_name" {
  description = "The name of the Azure App Service to be created. Must be globally unique."
  type        = string

}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan to which the App Service will be associated."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the App Service will be created."
  type        = string

}

variable "location" {
  description = "The Azure region where the App Service will be created."
  type        = string

}
