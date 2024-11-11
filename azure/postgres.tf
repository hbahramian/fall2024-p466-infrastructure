resource "azurerm_postgresql_flexible_server" "p466" {
  name                   = "p466-postgres-server"
  resource_group_name    = azurerm_resource_group.p466.name
  location               = azurerm_resource_group.p466.location
  version                = "13"
  storage_mb             = 32768
  administrator_login    = "fred"
  administrator_password = "password"

  sku_name   = "B_Standard_B1ms"


}

resource "azurerm_postgresql_flexible_server_database" "p466" {
  name                = "p466-primes-service-db"
  server_id           = azurerm_postgresql_flexible_server.p466.id
  collation           = "en_US.utf8"
  charset             = "utf8"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "p466" {
  name                = "allow-app-service"
  server_id           = azurerm_postgresql_flexible_server.p466.id
  start_ip_address    = "0.0.0.0" # Restrict to App Service IP for security
  end_ip_address      = "0.0.0.0"
}

