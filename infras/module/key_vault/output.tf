output "key_vault_name" {
  value = azurerm_key_vault.key_vault.name
}

output "key_vault_id" {
  value = azurerm_key_vault.key_vault.id
}

output "virtual_network_name" {
  value = azurerm_virtual_network.virtual_network.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.virtual_network.id
}
