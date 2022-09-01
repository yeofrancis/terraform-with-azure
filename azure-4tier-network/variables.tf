# Generic variables

# business division

variable "business" {
  description = "Business"
  type        = string
  default     = "sap"

}

#environment variable
variable "environment" {
  description = "environment"
  type        = string
  default     = "dev"

}

# Azure resource group name
variable "resource_group_name" {
  description = "resource group name"
  type        = string
  default     = "rg-default"

}

# azure resources location
variable "resource_group_location" {
  description = "region"
  type        = string
  default     = "eastus2"

}

