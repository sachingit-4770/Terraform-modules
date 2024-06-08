resource "azurerm_linux_virtual_machine" "LINUXVM"{
    for_each = var.vmmap
    name = each.value.vm-name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = each.value.size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    disable_password_authentication = false
    network_interface_ids = [data.azurerm_network_interface.nicdata[each.key].id]

    os_disk {
    

storage_account_type = "Standard_LRS"
caching = "ReadWrite"  
      
      }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
}
}