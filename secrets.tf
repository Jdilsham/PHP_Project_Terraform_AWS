module "php_app_secrets" {
  source  = "terraform-aws-modules/secrets-manager/aws"
  version = "1.1.1"

  name = "${var.project_name}-${var.environment}-php-secrets"

  secret_string = jsonencode({
    DB_HOST     = var.db_host
    DB_NAME     = var.db_name
    DB_USER     = var.db_user
    DB_PASSWORD = var.db_password
  })

  tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
