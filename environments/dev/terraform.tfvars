rgs = {
    rg = {
        name = "rg-space"
        location = "Central india"

    }
    rg2 = {
        name = "rg-space2"
        location = "Central india"

    }
}

snets = {
    snet1 = {
       name                 = "frontend-subnet"
  resource_group_name  = "rg-space"
  virtual_network_name = "vnet-space"
  address_prefixes     = ["10.0.1.0/24"] 
    }
}

vnets = {
    vnet = {
        name                = "vnet-space"
  location            = "central india"
  resource_group_name = "rg-space"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
    }
}

  pips = {
    pip1 = {
        name                = "frontend-pip"
  resource_group_name ="rg-space"
  location            = "Central india"
  allocation_method   = "Static"
    }
}

  vms = {
  vm1 = {
    nic_name            = "frontend-nic"
    location            = "Central india"
    resource_group_name = "rg-space"
    subnet_name         = "frontend-subnet"
    pip_name            = "frontend-pip"
    vnet_name           = "vnet-space"
    vm_name             = "frontend-vm"
    size                = "Standard_D4_v5"
    admin_username      = "adminuser"
    admin_password      = "azure@12345"
  }
}



