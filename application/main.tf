resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

module "local-random" {
  source = "../modules/terraform-random-module"
  string_length = 10
}

output "random" {
  value = "Application config output: ${random_id.random.hex}"
}

output "module-output" {
  value = "Module output: ${module.local-random.random_string}"
}
