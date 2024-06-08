data "azurerm_network_interface" "nicdata"{
    for_each = var.vmmap
    name = each.value.nic-name
    resource_group_name = each.value.resource_group_name
    
}