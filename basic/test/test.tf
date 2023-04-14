module "v_net" {
  source = "../.."
  rsc_name = azurerm_resource_group.rg.name
  rsc_location = azurerm_resource_group.rg.location
}

resource "azurerm_resource_group" "rg"{
    name ="vnet_check"
    location= "eastus"

}



