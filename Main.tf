provider "azurerm" {
  features {}
  skip_provider_registration = true
}

# Use the existing resource group
data "azurerm_resource_group" "rg" {
  name = "1-42d3d68e-playground-sandbox"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "my-vnet"
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}