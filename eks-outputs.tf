output "eks_cluster_name" {
  description = "Name of the EKS Cluster"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "Endpoint of the EKS Cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_oidc_provider_arn" {
  description = "OIDC Provider ARN of the EKS Cluster"
  value       = module.eks.oidc_provider_arn
}

output "eks_node_security_group_id" {
  description = "Security Group ID of the EKS Node"
  value       = module.eks.node_security_group_id
}