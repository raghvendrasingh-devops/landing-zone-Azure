terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.5.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "inventions-rg"
    storage_account_name = "inventionsstorage098"
    container_name = "inventions-tfstate"
    key = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}