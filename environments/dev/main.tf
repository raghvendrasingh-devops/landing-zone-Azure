module "resource_groups" {
  source = "../../modules/azurerm_resource_group"
  rgs = var.resource_groups
}

module "virtual_network" {
  depends_on = [ module.resource_groups ]
  source = "../../modules/azurerm_virtual_network"
  vnets = var.virtual_network
}

module "subnets" {
  depends_on = [ module.virtual_network ]
  source = "../../modules/azurerm_subnets"
  snets = var.subnets
}