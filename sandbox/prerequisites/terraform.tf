terraform {
  required_version = ">= 1.7.0"

  required_providers {
    azurerm = {
              source  = "hashicorp/azurerm"
      version = ">= 3.7.0, < 5.0.0"
    }
  }

  backend "local" {
    path= "state/terraform.tfstate"
  }
}
