output "rg_id" {
  # value = azurerm_resource_group.default[0].id
  value = azurerm_resource_group.default[*]
  description = "rg_ids"

}

output "rg_location" {
  value = azurerm_resource_group.default[*]
  description = "rg_location"
}