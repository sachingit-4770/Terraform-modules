subnetmap = {
  subnet01={
        subnet-name = "subnetdev01"
    resource_group_name = "RG-DEV-01"
    virtual_network_name = "vnet001"
    address_prefix = ["10.0.0.0/25"]
  }
    subnet02={
        subnet-name = "AzureBastionSubnet"
    resource_group_name = "RG-DEV-01"
    virtual_network_name = "vnet001"
    address_prefix = ["10.0.0.128/26"]
  }
}