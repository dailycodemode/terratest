terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "ukw-sbox-tfstate-rg-01"
        storage_account_name = "ukwsboxtfstatesa"
        container_name       = "ukw-sbox-azdo-tfstate"
        key                  = "sbox-terrastate-demo.tfstate"
    }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

# data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "example" {
  name     = "terratest-sbox-rmurphy-rg"
  location = "uksouth"

  tags = local.tags
}

resource "azurerm_key_vault" "example" {
  name                        = "terratest-sbox-rmur-kv"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  # access_policy {
  #   tenant_id = data.azurerm_client_config.current.tenant_id
  #   object_id = data.azurerm_client_config.current.object_id

  #   key_permissions = [
  #     "Get",
  #   ]

  #   secret_permissions = [
  #     "Get",
  #   ]

  #   storage_permissions = [
  #     "Get",
  #   ]
  # }
}