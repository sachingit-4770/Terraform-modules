data "azurerm_subnet" "subnetdata"{
    for_each = var.nicmap
    name =each.value.subnet-name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
}