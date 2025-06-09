resource "azurerm_storage_container" "storage_container" {
  name                  = "tfstate"
  storage_account_id    = var.storage_account_id
  container_access_type = "private"
}
