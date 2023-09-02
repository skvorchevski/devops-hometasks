resource "kubernetes_ingress_v1" "wcg-ingress" {
  metadata {
    name = "wcg-ingress"
  }
  spec {
    rule {
      host = var.ingress_host

      http {
        path {
          path = var.ingress_path
          path_type = var.ingress_path_type

          backend {
            service {
              name = "wcg-service"
              port {
                number = var.service_port
              }
            }
          }
        }
      }
    }
  }
}