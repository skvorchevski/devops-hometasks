resource "kubernetes_service" "wcg-service" {
  metadata {
    name = "wcg-service"
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