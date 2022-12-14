terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
}


provider "azurerm" {
  
    features {
      
    }

}



resource "azurerm_resource_group" "example" {
    name = "example-network"
    location = "East US"
}

resource "azurerm_virtual_network" "example" {
    name = "example-network"
    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    address_space = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "name" {
  
}


resource "azurerm_subnet" "terraform_subnet" {
    name = "MySubnet"
    resource_group_name = azurerm_resource_group.example.name
    # virtual_network_name = 
    
}