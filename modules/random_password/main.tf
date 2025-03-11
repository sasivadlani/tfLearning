resource "random_password" "password" {
  length  = var.passwordLength
  special = true
}