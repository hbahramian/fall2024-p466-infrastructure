terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
    azapi = {
      source = "Azure/azapi"
    }
  }

  required_version = ">= 1.5.6"
}

provider "azurerm" {
  features {}
}

provider "azapi" {
}