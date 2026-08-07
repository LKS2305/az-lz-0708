terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.0.1"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-tree"
   storage_account_name = "treestorage"
    container_name       = "tfstate"
    key                  = "dev-tfstate"
}
}

provider "azurerm" {
  features {}
}
