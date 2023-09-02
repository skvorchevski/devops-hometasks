resource "kubernetes_deployment" "wcg-deployment" {
  metadata {
    name      = "wcg-deployment"
  }

  spec {
    replicas = var.replicaCount

    selector {
      match_labels = {
        app = var.app_label
      }
    }

    template {
      metadata {
        labels = {
          app = var.app_label
        }
      }

      spec {
        container {
          image = "${var.image_repository}:${var.image_tag}"
          name  = var.image_name
          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}