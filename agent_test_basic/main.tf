resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 6
}

output "random" {
  value = "Basic Test Output: ${random_id.random.hex}"
}
