resource "random_string" "myrandom" {
  length  = 8
  upper   = true
  special = false
  numeric = false
}