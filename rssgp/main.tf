resource "azurerm_resource_group" "rgp_name" {
  name = "vron_company_${random_string.random_name.id}"
  location = var.loc
}

variable "loc" {
  description = "The location for Resource Group"
}

resource "random_string" "random_name" {
  length = 8
  special = false
}

output "rgp_name_output" {
  value = azurerm_resource_group.rgp_name.name
}

output "rgp_loc_output" {
  value = azurerm_resource_group.rgp_name.location
}