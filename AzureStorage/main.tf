provider "azurerm" {
  version = "=2.7.0"
  features {}
}

resource "azurerm_resource_group" "rsg1" {
  name     = "storageresources"
  location = "West Europe"
}

resource "azurerm_storage_account" "stga1" {
  name                     = "companyxstorageaccount"
  resource_group_name      = azurerm_resource_group.rsg1.name
  location                 = azurerm_resource_group.rsg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier = "Cool"

  network_rules {
    default_action = "Allow"
    ip_rules = ["51.174.100.186/32"]
  }
}

resource "azurerm_storage_container" "stcont1" {
  name                  = "backupstorage"
  storage_account_name  = azurerm_storage_account.stga1.name
  container_access_type = "private"
}

resource "azurerm_storage_share" "smb1" {
  name                 = "backup"
  storage_account_name = azurerm_storage_account.stga1.name
  quota                = 50
}

resource "azurerm_storage_share" "smb2" {
  name                 = "development"
  storage_account_name = azurerm_storage_account.stga1.name
  quota                = 50
  //acl         Set who has access to the share
}

resource "azurerm_storage_share" "smb3" {
  name                 = "general"
  storage_account_name = azurerm_storage_account.stga1.name
  quota                = 50
  //acl         Set who has access to the share
}

resource "azurerm_storage_share" "smb4" {
  name                 = "sensitive"
  storage_account_name = azurerm_storage_account.stga1.name
  quota                = 50
  //acl         Set who has access to the share
}