module "app_service" {
  source              = "../../module/app_service"
  resource_group_name = var.resource_group_name
  app_service_name    = var.app_service_name
  location            = var.location
  app_service_plan_id = var.app_service_plan_id
  subnet_id           = var.subnet_id
}
