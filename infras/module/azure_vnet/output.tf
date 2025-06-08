output "virtual_network_name" {
  description = "The name of the virtual network."
  value       = module.virtual_network.virtual_network_name
}

output "subnet_name" {
  description = "The name of the subnet."
  value       = module.subnet.subnet_name
}
