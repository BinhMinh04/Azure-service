module "app_service_plan" {
  source                = "../../module/app_service_plan"
  resource_group_name   = var.resource_group_name
  app_service_plan_name = var.app_service_plan_name
  location              = var.location
  sku                   = var.sku
  kind                  = var.kind
  is_linux              = var.is_linux
  tags                  = var.tags
  subscription_id       = var.subscription_id
  app_service_plan_id   = var.app_service_plan_id
}
