terraform {
  backend "azurerm" {
    resource_group_name  = "terraformRG"
    storage_account_name = "terraformstoraccsasi"
    container_name       = "terraformsccontainer"
    key                  = "terraform.state2"
  }
}

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
}

provider "random" {  
}