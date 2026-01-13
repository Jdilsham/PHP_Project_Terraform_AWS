output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnets IDs"
  value       = module.vpc.public_subnets
}

output "private_subnet_ids" {
  description = "Private subnets IDs"
  value       = module.vpc.private_subnets
}