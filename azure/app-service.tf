resource "azurerm_linux_web_app" "p466" {
  name                = "p466"
  resource_group_name = azurerm_resource_group.p466.name
  location            = azurerm_service_plan.p466.location
  service_plan_id     = azurerm_service_plan.p466.id

  site_config {
    application_stack {
      docker_image_name   = "primes-service:latest"
      docker_registry_url = "https://ghcr.io/hbahramian"
      docker_registry_username = "hbahramian"
      docker_registry_password = "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"
    }
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    WEBSITES_PORT                       = "8080" # Replace with your Spring Boot application's server port
    POSTGRES_HOST                       = azurerm_postgresql_flexible_server.p466.fqdn
    POSTGRES_PORT                       = "5432"
    POSTGRES_DATABASE                   = azurerm_postgresql_flexible_server_database.p466.name
    POSTGRES_USER                       = azurerm_postgresql_flexible_server.p466.administrator_login
    POSTGRES_PASSWORD                   = "password"
  }
}

output "webapp_url" {
  value = azurerm_linux_web_app.p466.default_hostname
}

