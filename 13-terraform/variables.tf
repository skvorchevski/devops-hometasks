###################################################
## DEPLOYMENT VARIABLES
###################################################

variable "deploy_name" {
  type    = string
  default = "wcg-deployment"
}

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

###################################################
## SERVICE VARIABLES
###################################################

variable "service_name" {
  type    = string
  default = "wcg-service"
}

variable "service_port" {
  type    = number
  default = 8888
}

variable "service_type" {
  type    = string
  default = "ClusterIP"
}

###################################################
## INGRESS VARIABLES
###################################################

variable "ingress_name" {
  type    = string
  default = "wcg-ingress"
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

###################################################
## LABEL VARIABLES
###################################################

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

###################################################
## GITHUB VARIABLES
###################################################

variable "github_token" {
  type      = string
  sensitive = true
}

variable "github_repository" {
  type    = string
  default = "devops-hometasks"
}