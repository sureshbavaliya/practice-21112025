rg_name = {
  rg1 = {
    name     = "suresh-rg"
    location = "central india"
  }
}

vnets = {
  vnet1 = {
    name                = "prod-vnet"
    location            = "centralindia"
    resource_group_name = "suresh-rg"
    address_space       = ["10.0.0.0/16"]

    subnet = [
      {
        name             = "frontend-subnet"
        address_prefixes = ["10.0.1.0/24"]
      },
      {
        name             = "backend-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

vms = {
  vm1 = {
    name                = "frontend-vm1"
    resource_group_name = "suresh-rg"
    location            = "centralindia"
    size                = "Standard_B1s"
    admin_username      = "azureuser"
    admin_password      = "Password@123"
    nic                 = "frontend-nic"
    vnet_name           = "prod-vnet"
    pip                 = "frontend-pip"
    subnet_name         = "frontend-subnet"
    backend_subnet_name = "backend-subnet"
  }
}


pip = {
  app1 = {
    name                = "pip1"
    resource_group_name = "suresh-rg"
    location            = "centralindia"
    allocation_method   = "Static"
    zones               = ["1"]
    domain_name_label   = "app1-dns"

    tags = {
      app = "frontend"
      env = "prod"
    }
  }
}

nsg = {
  nsg1 = {
    name     = "nsg-001"
    rg_name  = "suresh-rg"
    location = "central india"

    security_rule = {
      name                       = "nsg-001"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "*"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
}
