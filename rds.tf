module "db"{
    source = "terraform-aws-modules/rds/aws"
    version = "6.6.0"

    identifier = "${var.project_name}-${var.environment}-db"

    engine            = "mysql"
    engine_version    = "8.0"
    family = "mysql8.0"
    major_engine_version = "8.0"

    instance_class    = "db.t3.micro"
    allocated_storage = 20

    db_name = var.db_name
    username = var.db_user
    password = var.db_password

    vpc_security_group_ids = [module.eks.security_group_id]
    subnet_ids             = module.vpc.private_subnets

    publicly_accessible = false
    skip_final_snapshot = true

    deletion_protection = false

    tags = {
        Project     = var.project_name
        Environment = var.environment
        ManagedBy   = "Terraform"
    }
}