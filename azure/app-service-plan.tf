resource "azurerm_service_plan" "p466" {
  name                = "p466"
  resource_group_name = azurerm_resource_group.p466.name
  location            = azurerm_resource_group.p466.location
  os_type             = "Linux"
  sku_name            = "S1"

}