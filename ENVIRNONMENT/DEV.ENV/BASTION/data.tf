data "azurerm_subnet" "databas" {
    for_each = var.varbastion
  name = each.value.bastion-subnet-name
  virtual_network_name = each.value.vnet-name
  resource_group_name = each.value.bastion-rg-name
}
data "azurerm_public_ip" "datapip" {
    for_each = var.varbastion
  name = each.value.pip-name
  resource_group_name = each.value.bastion-rg-name
}