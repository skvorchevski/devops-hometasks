resource "kubernetes_ingress" "wcg-ingress" {
  metadata {
    name = "wcg-ingress"
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
  }

  spec {
    rule {
      host = var.ingress_host

      http {
        path {
          path = var.ingress_path
          path_type = var.ingress_path_type

          backend {
            service_name = "wcg-service"
            service_port = var.service_port
          }
        }
      }
    }
  }
}