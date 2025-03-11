resource "azurerm_key_vault_secret" "azkvsecret" {
    name = var.secret_name
    value = var.secret_value
    key_vault_id = var.key_vault_id
}