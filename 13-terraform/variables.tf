variable "replicaCount" {
  type    = number
  default = 1
}

variable "app_label" {
  type    = string
  default = "word-cloud-generator"
}

variable "image_repository" {
  type    = string
  default = "ghcr.io/skvorchevski/wcg"
}

variable "image_name" {
  type    = string
  default = "wcg"
}

variable "image_tag" {
  type    = string
  default = "latest"
}

variable "container_port" {
  type    = number
  default = 8888
}

variable "service_port" {
  type    = number
  default = 8888
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

variable "ingress_host" {
  type    = string
  default = "sites.local"
}

variable "ingress_path" {
  type    = string
  default = "/wcg"
}

variable "ingress_path_type" {
  type    = string
  default = "Prefix"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "app_name" {
  type    = string
  default = "wcg"
}

variable "create_index" {
  type    = bool
  default = true
}

variable "github_token" {
  type    = string
  sensitive = true
  default = "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"
}

variable "github_repository" {
  type    = string
  default = "devops-hometasks"
}
