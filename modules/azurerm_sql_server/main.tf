resource "azurerm_mssql_server" "sql_server" {
  name                         = "suresh-sqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"

  administrator_login          = "sqladminuser"
  administrator_login_password = "P@ssw0rd123!"
}