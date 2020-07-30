provider "kubernetes" {
 host = "https://127.0.0.1:52565"

 username = "admin"
 #TODO password = file("path")

 cluster_ca_certificate = file("/path/to/ca_cert.pem")

 load_config_file = false
}

resource "kubernetes_pod" "example" {
 metadata {
   name = "terraform-example"
   labels = {
     app = "MyApp"
   }
 }

 spec {
   container {
     image = "nginx:1.7.9"
     name  = "example"
   }
 }
}
