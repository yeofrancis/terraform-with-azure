# Terraform Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }

  }
}

# Provider Block
provider "azurerm" {
  features {}

}
