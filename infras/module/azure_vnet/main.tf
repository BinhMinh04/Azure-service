module "virtual_network" {
  source               = "../../core/virtual_network"
  virtual_network_name = var.virtual_network_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  dns_servers          = var.dns_servers
  address_space        = var.address_space
}


module "subnet" {
  source               = "../../core/subnet"
  resource_group_name  = var.resource_group_name
  subnet_name          = var.subnet_name
  address_prefixes     = var.address_prefixes
  virtual_network_name = var.virtual_network_name
}
