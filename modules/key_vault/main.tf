data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "azkeyvault" {
    name                        = var.key_vault_name
    location                    = var.location
    resource_group_name         = var.resource_group_name
    tenant_id                   = data.azurerm_client_config.current.tenant_id
    sku_name                    = var.sku_name
    
    access_policy {
        tenant_id = data.azurerm_client_config.current.tenant_id
        object_id = data.azurerm_client_config.current.object_id

        secret_permissions = [
            "Get",
            "List",
            "Set",
            "Delete",
            "Recover",
            "Backup",
            "Restore",
            "Purge"
        ]
    }

    lifecycle {
        ignore_changes = [
            access_policy
        ]
    }
}
