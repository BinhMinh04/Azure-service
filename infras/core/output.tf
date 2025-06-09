output "app_service_name" {
  description = "The name of the App Service."
  value       = module.app_service.app_service_name
}

output "app_service_id" {
  description = "The ID of the App Service."
  value       = module.app_service.app_service_id
  
}