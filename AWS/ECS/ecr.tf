resource "aws_ecr_repository" "main" {
  name                 = "${var.name}-${var.Ambiente}"
  image_tag_mutability = "MUTABLE"
}