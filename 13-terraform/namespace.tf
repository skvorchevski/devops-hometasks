resource "kubernetes_namespace" "wsg-ns" {
  count = var.create_index ? 1 : 0
  metadata {
    labels = local.labels
    name   = "${local.prefix}-namespace"
  }
}