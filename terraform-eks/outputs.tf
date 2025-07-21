output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "ecr_repo_url" {
  value = aws_ecr_repository.flask_app.repository_url
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}
