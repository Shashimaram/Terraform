resource "azurerm_resource_group" "default" {
  count = var.rg_count > 1 ? var.rg_count : 1
  name = var.rg_count > 1 ? "rg-${var.rg_name}-${count.index}" : var.rg_name
  location = var.location

  timeouts {
    create = var.create
    read   = var.read
    update = var.update
    delete = var.delete
  }

  tags = var.custom_tags
}