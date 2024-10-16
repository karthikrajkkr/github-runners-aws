#-------------------------------------------------<ECR>--------------------------------------------------
resource "aws_ecr_repository" "runner_ecr" {
  name                 = "github-runner-eks-image"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  force_delete = true
}
