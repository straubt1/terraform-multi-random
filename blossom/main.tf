resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 9
}

output "random" {
  value = "Blossom Output: ${random_id.random.hex}"
}
