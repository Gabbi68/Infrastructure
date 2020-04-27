provider "azurerm" {
  version = "=2.7.0"
  features {}
}

resource "azurerm_resource_group" "inf1" {
  name     = "storageresources"
  location = "West Europe"
}

resource "azurerm_storage_account" "inf1" {
  name                     = "companyxstorageaccount"
  resource_group_name      = azurerm_resource_group.inf1.name
  location                 = azurerm_resource_group.inf1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier = "Cool"
}

resource "azurerm_storage_container" "inf1" {
  name                  = "backupstorage"
  storage_account_name  = azurerm_storage_account.inf1.name
  container_access_type = "private"
}

resource "azurerm_storage_share" "inf1" {
  name                 = "sharename"
  storage_account_name = azurerm_storage_account.inf1.name
  quota                = 50
}

resource "azurerm_storage_share" "inf1" {
  name                 = "development"
  storage_account_name = azurerm_storage_account.inf1.name
  quota                = 50
  //acl         Set who has access to the share
}

resource "azurerm_storage_share" "inf1" {
  name                 = "general"
  storage_account_name = azurerm_storage_account.inf1.name
  quota                = 50
  //acl         Set who has access to the share
}

resource "azurerm_storage_share" "inf1" {
  name                 = "sensitive"
  storage_account_name = azurerm_storage_account.inf1.name
  quota                = 50
  //acl         Set who has access to the share
}