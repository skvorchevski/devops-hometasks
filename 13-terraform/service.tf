resource "kubernetes_service" "wcg-service-resource" {
  count = var.create_index ? 1 : 0

  metadata {
    name = var.service_name
    namespace = kubernetes_namespace.wsg-ns[count.index].metadata[0].name
  }

  spec {
    selector = {
      app = var.app_label
    }
    port {
      port        = var.service_port
      target_port = var.container_port
    }

    type = var.service_type
  }
}