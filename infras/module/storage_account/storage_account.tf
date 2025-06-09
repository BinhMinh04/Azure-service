resource "azurerm_storage_account" "storage_account" {
  name                            = var.storage_account_name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = "Standard"
  account_replication_type        = "GRS"
  is_hns_enabled                  = true
  allow_nested_items_to_be_public = false
  public_network_access_enabled   = false
  blob_properties {
    delete_retention_policy {
      days = 10
    }
  }
}

