data "external" "slow-data-source" {
  program = ["bash", "-c", "sleep 60 && echo {}"]
}

resource "null_resource" "slow-provisioner" {
  provisioner "local-exec" {
    command = "sleep 60"
  }
}