

resource "azurerm_virtual_network" "example" {
  name                = var.avn.name
  address_space       = var.avn.address_space
  location            = var.rsc_location
  resource_group_name = var.rsc_name
}

resource "azurerm_subnet" "example" {
  name                 = var.subnet.subnet_name
  resource_group_name  = var.rsc_name
  virtual_network_name = var.avn.name
  address_prefixes     = var.subnet.subnet_address_prefixes
  
}

variable "avn" {
    type = object({
        name   = string
        address_space= list(string)
    }) 

    default = {
      address_space = ["10.0.0.0/16"]
      name = "azure_vnet"
    }
}

variable "subnet" {
  type = object({
    subnet_name = string
    subnet_address_prefixes = list(string)
  })
  default = {
    subnet_address_prefixes = ["10.0.1.0/24"]
    subnet_name = "v_subnet"
  }

}
variable "rsc_location" {
    type = string
  
}

variable "rsc_name" {
    type =string
  
}

