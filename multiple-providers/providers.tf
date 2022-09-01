# Azure Provider source and version being used
terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  skip_provider_registration = true

}

# # Configure 2nd Provider
# provider "azurerm" {
#   features {}

#   alias = "provider2-westus"

# }


