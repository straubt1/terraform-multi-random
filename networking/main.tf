resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

output "random" {
  value = "Networking config output: ${random_id.random.hex}"
}