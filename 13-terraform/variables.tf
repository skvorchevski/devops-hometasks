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
  default = "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"
}

variable "github_repository_url" {
  type    = string
  default = "https://github.com/skvorchevski/devops-hometasks"
}