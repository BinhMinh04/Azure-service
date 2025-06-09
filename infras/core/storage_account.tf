module "storage_account" {
  source                          = "../../module/storage_account"
  resource_group_name             = var.resource_group_name
  storage_account_name            = var.storage_account_name
  location                        = var.location
  account_tier                    = var.account_tier
  account_replication_type        = var.account_replication_type
  is_hns_enabled                  = var.is_hns_enabled
  allow_nested_items_to_be_public = var.allow_nested_items_to_be_public
  public_network_access_enabled   = var.public_network_access_enabled
  delete_retention_policy_days    = var.delete_retention_policy_days
  subscription_id                 = var.subscription_id
}
