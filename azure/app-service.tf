# resource "azurerm_linux_web_app" "p466" {
#   name                = "p466"
#   resource_group_name = azurerm_resource_group.p466.name
#   location            = azurerm_service_plan.p466.location
#   service_plan_id     = azurerm_service_plan.p466.id
#
#   site_config {
#     always_on = false
#   }
#
#   app_settings = {
#     "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
#   }
# }

resource "azurerm_app_service" "p466" {
  name                = "p466"
  location            = azurerm_resource_group.p466.location
  resource_group_name = azurerm_resource_group.p466.name
  app_service_plan_id = azurerm_service_plan.p466.id

  site_config {
    app_command_line = ""
    linux_fx_version = "COMPOSE|${filebase64("docker-compose.yml")}"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }
}