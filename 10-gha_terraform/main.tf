terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.20.0"
    }
  }
  backend "azurerm" {
    resource_group_name     = "rg-storage-backend"
    storage_account_name    = "tfstorage"
    container_name          = "tfstate"
    key                     = "tfstate"
  }
}

provider "azurerm" {
  features {}
}

#Create Resource Group
resource "azurerm_resource_group" "another_rg" {
  name     = "another_rg"
  location = "westeurope"
}
