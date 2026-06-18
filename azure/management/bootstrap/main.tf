# azure/management/bootstrap/main.tf

terraform {
  backend "local" {}
}

provider "azurerm" {
  features {}
  subscription_id = var.management_subscription_id
}

resource "azurerm_resource_group" "tfstate" {
  name     = "rg-terraform-state"
  location = "eastus"

  tags = {
    purpose    = "terraform-state"
    managed-by = "terraform-bootstrap"
  }
}

resource "azurerm_storage_account" "tfstate" {
  name                            = var.storage_account_name
  resource_group_name             = azurerm_resource_group.tfstate.name
  location                        = azurerm_resource_group.tfstate.location
  account_tier                    = "Standard"
  account_replication_type        = "LRS"
  allow_nested_items_to_be_public = false

  tags = {
    purpose    = "terraform-state"
    managed-by = "terraform-bootstrap"
  }
}

resource "azurerm_storage_account_blob_properties" "tfstate" {
  storage_account_id = azurerm_storage_account.tfstate.id
  versioning_enabled = false
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}