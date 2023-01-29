resource "azurerm_storage_account" "feedme_dev" {
  name = "${var.project}sa${var.environment}"
  resource_group_name = azurerm_resource_group.feedme_dev.name
  location = var.location
  account_tier = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.environment
  }
}