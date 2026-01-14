module "ecr_php_app" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.6.0"

  repository_name = "${var.project_name}-${var.environment}-php-app"
  repository_type = "private"

  create_lifecycle_policy = true

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}