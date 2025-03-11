module "resource_group" {
  source                  = "./modules/resource_group"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "storage_account" {
  source                   = "./modules/storage_account"
  depends_on               = [module.resource_group]
  storage_account_name     = var.storage_account_name
  resource_group_name      = module.resource_group.resource_group_name
  location                 = module.resource_group.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

module "storage_container" {
  source                = "./modules/storage_container"
  depends_on            = [module.storage_account]
  container_name        = var.container_name
  storage_account_id    = module.storage_account.storage_account_id
  container_access_type = var.container_access_type
}

module "random_password" {
  source         = "./modules/random_password"
  for_each       = var.key_vault_names
  passwordLength = var.passwordLength
}

module "key_vault" {
  source              = "./modules/key_vault"
  depends_on          = [module.resource_group]
  for_each            = var.key_vault_names
  key_vault_name      = each.value
  location            = module.resource_group.resource_group_location
  resource_group_name = module.resource_group.resource_group_name
  sku_name            = var.sku_name
}

module "key_vault_secrets" {
  source       = "./modules/key_vault_secret"
  depends_on   = [module.key_vault]
  for_each     = var.key_vault_names
  secret_name  = var.secret_name
  secret_value = module.random_password[each.key].password
  key_vault_id = module.key_vault[each.value].key_vault_id
}
