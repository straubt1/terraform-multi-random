provider "consul" {
  address  = "172.17.0.3:8500"
}
resource "consul_keys" "test" {
  key {
    path  = "agent-test"
    value = "works!"
  }
}
resource "consul_keys" "test_tfc_var" {
  # the variable value should exist as a TFC variable first
  key {
    path  = "agent-test"
    value = var.consul_kv_test
  }
}
variable "consul_kv_test" {}