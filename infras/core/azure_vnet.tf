module "network" {
  source               = "../../module/network"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
  location             = var.location
  dns_servers          = var.dns_servers
  subnet_name          = var.subnet_name
  address_prefixes     = var.address_prefixes
  subscription_id      = var.subscription_id
}
