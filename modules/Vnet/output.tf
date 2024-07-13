output "vnet" {
  description = "For a Vnet, returns: <br> -vnet_name <br> - vnet_adress_space <br> - vnet_id <br> - vnet_dns"
  value = {
    "vnet_name"          = azurerm_virtual_network.vnet.name
    "vnet_address_space" = azurerm_virtual_network.vnet.address_space
    "vnet_id"            = azurerm_virtual_network.vnet.id
    "vnet_dns"           = azurerm_virtual_network.vnet.dns_servers
  }
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}