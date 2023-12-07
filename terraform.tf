terraform {
  backend "azurerm" {
    use_azuread_auth     = true
    container_name       = "meshstack-showcase"
    key                  = "meshstack"
    storage_account_name = "tfstatestihkdgmc"
    resource_group_name  = "tfstate-rg-ihkd-apq"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
