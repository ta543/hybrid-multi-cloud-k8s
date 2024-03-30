provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "prod" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "prod_vnet" {
  name                = "${var.resource_group_name}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.prod.location
  resource_group_name = azurerm_resource_group.prod.name
}

resource "azurerm_subnet" "prod_subnet" {
  name                 = "${var.resource_group_name}-subnet"
  resource_group_name  = azurerm_resource_group.prod.name
  virtual_network_name = azurerm_virtual_network.prod_vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "prod_nsg" {
  name                = "${var.resource_group_name}-nsg"
  location            = azurerm_resource_group.prod.location
  resource_group_name = azurerm_resource_group.prod.name
}

resource "azurerm_network_security_rule" "prod_nsg_rule" {
  name                        = "SSH"
  priority                    = 1001
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.prod.name
  network_security_group_name = azurerm_network_security_group.prod_nsg.name
}

# VM instances creation would be similar to the development setup but tailored for production use,
# including linking to the subnet and NSG created above.
