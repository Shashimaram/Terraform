resource "azurerm_subnet" "snet" {
  name = var.snet_name
  resource_group_name = var.resource_group_name
  # location            = var.resource_group_location
  address_prefixes = var.address_prefix
  virtual_network_name = var.vnet_name


  default_outbound_access_enabled = var.outboundAccess
  private_endpoint_network_policies = var.private_endpoint_network_policies
  private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled 

}