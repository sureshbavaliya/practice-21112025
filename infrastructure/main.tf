module "resource_group" {
  source  = "../modules/azurerm_resource_group"
  rg_name = var.rg_name

}
module "azurerm_virtual_network" {
  depends_on = [module.resource_group]
  source     = "../modules/azurerm_virtual_network"
  vnets      = var.vnets

}

module "pip" {
  depends_on = [module.resource_group, ]
  source     = "../modules/azurerm_public_ip"
  pip        = var.pip
}

module "frontend_vm" {
  depends_on = [module.azurerm_virtual_network, ]
  source     = "../modules/azurerm_virtual_machine"
  vms        = var.vms
}