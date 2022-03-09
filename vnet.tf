resource "azurerm_virtual_network" "terraformnetwork" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = azurerm_resource_group.myTerraformGroup.name
  tags = va.tags
  address_space       = ["10.0.0.0/16"]
 }
 resource "azurerm_subnet" "terraformnetworksubnet" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.myTerraformGroup.name
  virtual_network_name = azurerm_virtual_network.terraformnetwork.name
  address_prefixes     = ["10.0.2.0/24"]
 }