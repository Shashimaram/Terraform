resource "azurerm_virtual_network" "vnet" {
  name = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  address_space       = var.address_space
  tags                = var.custom_tags
  encryption {
    enforcement = var.vnet_encryption
  }
  dynamic "ddos_protection_plan" {
      for_each = var.ddos_id != "" ? [1] : []

      content {
        id     = var.ddos_id
        enable = true
      }
    }
}