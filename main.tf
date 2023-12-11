resource "azurerm_resource_group" "main" {
  name     = "platform-rg"
  location = "Germany West Central"
}

resource "azurerm_virtual_network" "main" {
  name                = var.virtual_network_name
  location            = "Germany West Central"
  resource_group_name = azurerm_resource_group.main.name
  address_space       = [var.ip_address_range]
}
