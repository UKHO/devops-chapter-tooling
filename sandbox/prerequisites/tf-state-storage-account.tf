// https://registry.terraform.io/modules/Azure/avm-res-storage-storageaccount/azurerm/0.6.4
module "avm-res-storage-storageaccount" {
  source              = "Azure/avm-res-storage-storageaccount/azurerm"
  version             = "0.6.4"
  location            = data.azurerm_resource_group.m_devopschapter_rg.location
  name                = var.tf_state_sa_name
  resource_group_name = data.azurerm_resource_group.m_devopschapter_rg.name

  containers = {
    tfstate = {
      name = "tfstate"
    }
  }

  enable_telemetry = false

  shared_access_key_enabled = true

  tags = data.azurerm_resource_group.m_devopschapter_rg.tags
}
