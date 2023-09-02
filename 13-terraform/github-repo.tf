resource "github_repository_file" "file" {
  for_each = fileset("${path.module}", "*.{tf,tfvars}")

  repository          = var.github_repository
  branch              = "feature/13-terraform"
  file                = "13-terraform/${each.value}"
  content             = file("${path.module}/${each.value}")
  commit_message      = "Managed by Terraform"
  commit_author       = "Skvorchevskiy A"
  commit_email        = "askvorchevskiy@gmail.com"
  overwrite_on_create = true
}