module "azure_vnet" {
  source               = "./module/azure_vnet"
  location             = var.location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_name          = var.subnet_name
  dns_servers          = var.dns_servers
  address_space        = var.address_space
  address_prefixes     = var.address_prefixes
}
