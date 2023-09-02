resource "kubernetes_ingress" "wcg-ingress" {
  count = var.create_index ? 1 : 0

  metadata {
    name      = "wcg-ingress"
    namespace = kubernetes_namespace.wsg-ns[count.index].metadata[0].name
  }

  spec {
    rule {
      host = var.ingress_host

      http {
        path {
          path = var.ingress_path

          backend {
            service_name = "wcg-service"
            service_port = var.service_port
          }
        }
      }
    }
  }
}