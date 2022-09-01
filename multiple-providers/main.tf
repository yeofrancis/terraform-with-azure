# --- root / main.tf ----

# create a resource group
resource "azurerm_resource_group" "my-rg1" {
    name = "myrg_test"
    location = "East US"
  
}

# # create 2nd rss group in west us
# resource "azurerm_resource_group" "my-rg2" {
#     name = "myrg2_test"
#     location = "West US"
#     provider = azurerm.provider2-westus
  
# }
resource "random_string" "random" {
    length = 16
    special = false 

}

resource "azurerm_storage_account" "fy-storetest" {
    name = "fystoretest"
    resource_group_name = azurerm_resource_group.my-rg1.name
    location = azurerm_resource_group.my-rg1.location
    account_tier = "Standard"
    account_replication_type = "GRS"

    tags = {
      environment = "dev"
    }
}

# create virtual network
resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet-1"
    location            = azurerm_resource_group.my-rg1.location
    resource_group_name = azurerm_resource_group.my-rg1.name
    address_space       = ["10.0.0.0/16"]
    tags = {
      "Name" = "myvnet-1"
      #"Environment" = "Dev"
    }
  
}

# create subnet
resource "azurerm_subnet" "my-subnet" {
    name = "mysubnet-1"
    resource_group_name  = azurerm_resource_group.my-rg1.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes     = ["10.0.2.0/24"]
}

# create public ip
resource "azurerm_public_ip" "mypublic-ip" {
    name = "mypublic-ip-01"
    resource_group_name = azurerm_resource_group.my-rg1.name
    location            = azurerm_resource_group.my-rg1.location
    allocation_method   = "Static"

    tags = {
        environment = "dev"
    }
}

# create network interface
resource "azurerm_network_interface" "myvmnic" {
    name = "vm-nic"
    location = azurerm_resource_group.my-rg1.location
    resource_group_name = azurerm_resource_group.my-rg1.name

    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.my-subnet.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.mypublic-ip.id
  }
}