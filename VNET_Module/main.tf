resource "azurerm_virtual_network" "VNET" {
    for_each = var.vnetmap
  name = each.value.vnet-name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space = ["10.0.0.0/24"]

}