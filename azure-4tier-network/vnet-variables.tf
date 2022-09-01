# Virtual Network, Subnets and Subnet NSGs

# Virtual Network
variable "vnet_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "vnet-default"

}

# Virtual Network Address space
variable "vnet_address_space" {
  description = "Virtual Network Address"
  type        = list(string)
  default     = ["10.0.0.0/16"]

}

# Web Subnet Name web_subnet_name
variable "web_subnet_name" {
  description = "Virtual Network Web Subnet Name"
  type        = string
  default     = "websubnet"

}

# Web Subnet Address Space
variable "web_subnet_address" {
  description = "Virtual Network Web Subnet Address"
  type        = list(string)
  default     = ["10.0.1.0/24"]

}

# App Subnet Name
variable "app_subnet_name" {
  description = "Virtual Network App Subnet Name"
  type        = string
  default     = "appsubnet"

}

# App Subnet Address Space
variable "app_subnet_address" {
  description = "Virtual Network App Subnet Address"
  type        = list(string)
  default     = ["10.0.11.0/24"]

}

# Database Subnet Name
variable "db_subnet_name" {
  description = "Virtual Network Database Subnet Name"
  type        = string
  default     = "dbsubnet"
}

# Database Subnet Address
variable "db_subnet_address" {
  description = "Virtual Network Database Address"
  type        = list(string)
  default     = ["10.0.21.0/24"]

}

# Bastion / Mgmt Subnet Name
variable "bastion_subnet_name" {
  description = "Virtual Network Bastion Subnet Name"
  type        = string
  default     = "bastionsubnet"

}

# Bastion / Mgmt Subnet Address
variable "bastion_subnet_address" {
  description = "Virtual Network Bastion Subnet Address"
  type        = list(string)
  default     = ["10.0.100.0/24"]

}
