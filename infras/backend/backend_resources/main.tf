module "backend_resource_group" {
  source              = "../../core/resource_group"
  resource_group_name = var.backend_resource_group_name
  location            = var.location
}

module "backend_storage_account" {
  source               = "../../core/storage_account"
  location             = module.backend_resource_group.resource_group_location
  storage_account_name = var.backend_storage_account_name
  resource_group_name  = module.backend_resource_group.resource_group_name
}


module "storage_containner" {
  source             = "../../core/storage_container"
  storage_account_id = module.backend_storage_account.storage_account_id
}
