resource "aws_ecr_repository" "flask_app" {
  name                 = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name = var.ecr_repo_name
  }
}