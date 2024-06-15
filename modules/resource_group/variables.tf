variable "rg_count" {
    type = number
    description = "(optional)The number of resource groups to create. If set to 1 or less, only one resource group will be created."
}

variable "rg_name" {
  type        = string
  description = "The name of the resource group to create."
}

variable "location" {
  type        = string
  description = "The Azure location where the resource group will be created."

  validation {
    condition =   contains(["asia",
                            "eastasia",
                            "asiapacific",
                            "southeastasia",
                            "australia",
                            "australiacentral2",
                            "australiacentral",
                            "australiaeast",
                            "australiasoutheast",
                            "brazil",
                            "brazilsouth",
                            "brazilsoutheast",
                            "canada",
                            "canadacentral",
                            "canadaeast",
                            "chinaeast2",
                            "chinaeast3",
                            "chinaeast",
                            "chinanorth2",
                            "chinanorth3",
                            "chinanorth",
                            "europe",
                            "northeurope",
                            "westeurope",
                            "francecentral",
                            "francesouth",
                            "germanycentral",
                            "germanynortheast",
                            "germanynorth",
                            "germanywestcentral",
                            "global",
                            "centralindia",
                            "india",
                            "southindia",
                            "westindia",
                            "israelcentral",
                            "italynorth",
                            "japaneast",
                            "japan",
                            "japanwest",
                            "korea",
                            "koreacentral",
                            "koreasouth",
                            "norway",
                            "norwayeast",
                            "norwaywest",
                            "polandcentral",
                            "qatarcentral",
                            "southafricanorth",
                            "southafricawest",
                            "singapore",
                            "sweden",
                            "swedencentral",
                            "swedensouth",
                            "switzerlandnorth",
                            "switzerlandwest",
                            "uaecentral",
                            "uaenorth",
                            "uksouth",
                            "uk",
                            "ukwest",
                            "centralus",
                            "eastus2",
                            "eastus",
                            "northcentralus",
                            "southcentralus",
                            "unitedstates",
                            "westus2",
                            "westus3",
                            "westcentralus",
                            "westus",],var.location)
    error_message = "Not a valid Region"
    }
}

variable "delete" {
  type        = string
  description = "The timeout for deleting the resource group."
  default = "4m"
}

variable "update" {
  type        = string
  description = "The timeout for updating the resource group."
  default = "4m"
}

variable "read" {
  type        = string
  description = "The timeout for reading the resource group."
  default = "4m"

}

variable "create" {
  type        = string
  description = "The timeout for creating the resource group."
  default = "4m"
}

variable "custom_tags" {
  type = map(string)
  default = {}
  description = "A map of custom tags to apply to the resource group. Each key-value pair will be added as a tag to the resource group"
}

