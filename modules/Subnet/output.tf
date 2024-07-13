output "snet_name" {
  value = azurerm_subnet.snet.name
}

output "id" {
  value = azurerm_subnet.snet.id
}
output "resource_group_name" {
  value = azurerm_subnet.snet.resource_group_name
}

output "vnet_name" {
  value = azurerm_subnet.snet.virtual_network_name
}