resource "azurerm_network_interface" "NIC" {
    for_each = var.nicmap
  name = each.value.nic-name
  resource_group_name = each.value.resource_group_name
  location = each.value.location

  ip_configuration {
    name = "internal"
    subnet_id = data.azurerm_subnet.subnetdata[each.key].id
    private_ip_address_allocation ="Dynamic"
  }
}
