# variable "subnet_delegation" {
#   type        = map(set(object({
#     name    = string
#     actions = set(string)
#   })))
#   description = "The delegation configuration for the subnet."
# }

variable "snet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}

variable "address_prefix" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
  sensitive   = false
}

variable "vnet_name" {
  type = string
  description = "The name of the virtual network to which to attach the subnet"
}

variable "outboundAccess" {
  type = bool
  description = "Enable default outbound access to the internet for the subnet"
}

variable "private_endpoint_network_policies" {
  type = string
  description = "Enable or Disable network policies for the private endpoint on the subnet"

  validation {
    condition     = contains(["Enabled", "Disabled","NetworkSecurityGroupEnabled","RouteTableEnabled"], var.private_endpoint_network_policies)
    error_message = " Possible values are Disabled, Enabled, NetworkSecurityGroupEnabled and RouteTableEnabled"
  }
}

variable "private_link_service_network_policies_enabled" {
  type = bool
  description = "Enable or Disable network policies for the private link service on the subnet"
}