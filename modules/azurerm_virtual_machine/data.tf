data "azurerm_network_interface" "nic" {
  for_each            = var.vms
  name                = "${each.value.name}-nic"
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "frontend_subnet" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
}

data "azurerm_subnet" "backend_subnet" {
  for_each             = var.vms
  name                 = each.value.backend_subnet_name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.vnet_name
}

# data "azurerm_key_vault" "kv" {
#   name                = "demosbkv"
#   resource_group_name = "kv-rg"
# }

# data "azurerm_key_vault_secret" "kv-username" {
#   name         = "vmusername"
#   key_vault_id = data.azurerm_key_vault.kv.id
# }

# data "azurerm_key_vault_secret" "kv-password" {
#   name         = "vmpassword"1//.,mn bvc`cvb+98/7
#   key_vault_id = data.azurerm_key_vault.kv.id
# }
