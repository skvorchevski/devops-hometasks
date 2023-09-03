resource "kubernetes_ingress_v1" "wcg-ingress-resource" {
  count = var.create_index ? 1 : 0

  metadata {
    name = var.ingress_name
    namespace = kubernetes_namespace.wsg-ns[count.index].metadata[0].name
  }

  spec {
    rule {
      host = var.ingress_host
      http {
        path {
          path      = var.ingress_path
          path_type = var.ingress_path_type
          backend {
            service {
              name = var.service_name
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