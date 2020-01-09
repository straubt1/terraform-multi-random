resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 6
}

data "terraform_remote_state" "blossom" {
  backend = "remote"
  config = {
    organization = "clang_test"
    workspaces = {
      name = "blossom"
    }
  }
}

output "random" {
  value = "Bubbles output: ${random_id.random.hex}"
}

output "blossom_random" {
  value = "Blossom Remote Value - ${data.terraform_remote_state.blossom.random}"
}