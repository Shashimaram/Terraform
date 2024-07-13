variable "vnet_name" {
  type = string
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type = string
  description = " (Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
}

variable "resource_group_location" {
  type = string
  description = "The location/region where the virtual network is created. "
}

variable "address_space" {
  type = list(string)
  description = "give the list of addressspaces"
}

variable "custom_tags" {
  type = map(string)
  default = {}
  description = "A map of custom tags to apply to the resource group. Each key-value pair will be added as a tag to the resource group"
}

variable "vnet_encryption" {
  type = string
  description = "Specifies if the encrypted Virtual Network allows VM that does not support encryption"
  validation {
    condition     = contains(["DropUnencrypted","AllowUnencrypted"], var.vnet_encryption)
    error_message = "must be one of this, [DropUnencrypted,AllowUnencrypted] "
  }
}

variable "ddos_id" {
  description = "(Optional) ID of the DDoS protection plan if exists"
  default     = ""
}