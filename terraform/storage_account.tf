resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  min_tls_version            = "TLS1_2"
  https_traffic_only_enabled = true

  tags = {
    Environment = "development"
    ManagedBy   = "Terraform"
    Practical   = "Week08"
    Project     = "KoalaTech Course Platform"
  }
}

resource "azurerm_storage_container" "student_profile_photo" {
  name                  = "student-profile-photo"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}

resource "azurerm_storage_container" "lecturer_profile_photo" {
  name                  = "lecturer-profile-photo"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}