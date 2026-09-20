resource_groups = {
  rg1 = {
    name = "prod-rg"
    location = "eastus"
  }
  rg2 = {
    name = "dev-rg"
    location = "eastus"
  }
  rg3 = {
    name = "stage-rg"
    location = "eastus"
  }
  rg4 = {
    name = "ramu-rg"
    location = "eastus"
  }
  rg5 = {
    name = "shyamu-rg"
    location = "eastus"
  }
  rg6 = {
    name = "deepu-rg"
    location = "eastus"
  }
}


virtual_network = {
  vnet1 = {
    name = "prod-vnet"
    location = "eastus"
    resource_group_name = "prod-rg"
    address_space = ["10.0.0.0/16"]
  }
  vnet2 = {
    name = "dev-vnet"
    location = "eastus"
    resource_group_name = "prod-rg"
    address_space = ["172.20.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name = "prod-subnet"
    virtual_network_name = "prod-vnet"
    resource_group_name = "prod-rg"
    address_prefixes = ["10.0.1.0/24"]
  }
  snet2 = {
    name = "dev-subnet"
    virtual_network_name = "prod-vnet"
    resource_group_name = "prod-rg"
    address_prefixes = ["10.0.2.0/24"]
  }
   snet3 = {
    name = "test-subnet"
    virtual_network_name = "prod-vnet"
    resource_group_name = "prod-rg"
    address_prefixes = ["10.0.3.0/24"]
  }
}