resource "azurerm_storage_account" "str_acc_name" {
  name = var.storage_acc_name
  location = var.rss_loc_name
  resource_group_name = var.rssgp_name
  account_kind = "StorageV2"
  
  account_replication_type = "LRS"
  account_tier = "Standard"
}

resource "azurerm_storage_container" "conatiner_name" {
  name = "${var.storage_acc_name}container"
  storage_account_name = azurerm_storage_account.str_acc_name.name
}

variable "storage_acc_name" {
  description = "This variable is for storage account creation"
}

variable "rssgp_name" {
  description = "this is rgp variable"
}

variable "rss_loc_name" {
  
}

output "storageaccount_output" {
  value = azurerm_storage_account.str_acc_name.name
}