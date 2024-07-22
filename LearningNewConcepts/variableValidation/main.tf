terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.113.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "test" {
  name = var.test_group
  location = var.test_location
}

resource "random_string" "randomString" {
  length = 9
}

locals {
  testname = format("rg-%s-%s", random_string.randomString.id,var.test_group)
}


variable "test_group" {
  type = string
  description = "location of resourceGroup"

  validation {
    condition = substr(var.test_group,0,3) == "rg-"
    error_message = "the name is not valid"
  }
}

variable "test_location" {
  type = string
  description = "location of the resource group"

  validation {
    condition = contains(["eastus", "westus"], var.test_location)
    error_message = "The location must be either eastus or westus."
  }
}

output "randomName" {
  value = random_string.randomString.id
}
output "localTest" {
    value = local.testname
}