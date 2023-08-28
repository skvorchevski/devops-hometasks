resource "github_repository_file" "terraform-state" {
  repository          = var.github_repository_url
  branch              = "feature/13-terraform"
  file                = "13-terraform/terraform.tfstate"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Skvorchevskiy A"
  commit_email        = "askvorchevskiy@gmail.com"
  overwrite_on_create = true
}