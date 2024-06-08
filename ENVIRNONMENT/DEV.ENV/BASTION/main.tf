resource "azurerm_bastion_host" "name" {
    for_each = var.varbastion
  name = each.value.bastion-name
  resource_group_name = each.value.bastion-rg-name

  location = "eastus"
  ip_configuration {
    name = "bastionPIP"
    subnet_id = data.azurerm_subnet.databas[each.key].id
    public_ip_address_id = data.azurerm_public_ip.datapip[each.key].id
  }
}