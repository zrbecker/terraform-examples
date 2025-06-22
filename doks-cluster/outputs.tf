output "cluster_name" {
  description = "Name of the DOKS cluster"
  value       = digitalocean_kubernetes_cluster.doks_cluster.name
}

output "cluster_id" {
  description = "ID of the DOKS cluster"
  value       = digitalocean_kubernetes_cluster.doks_cluster.id
}

output "cluster_endpoint" {
  description = "Endpoint for the Kubernetes API"
  value       = digitalocean_kubernetes_cluster.doks_cluster.endpoint
}

output "cluster_status" {
  description = "Status of the DOKS cluster"
  value       = digitalocean_kubernetes_cluster.doks_cluster.status
}

output "kubernetes_version" {
  description = "Kubernetes version of the cluster"
  value       = digitalocean_kubernetes_cluster.doks_cluster.version
}

output "node_pool_id" {
  description = "ID of the default node pool"
  value       = digitalocean_kubernetes_cluster.doks_cluster.node_pool[0].id
}

output "node_pool_name" {
  description = "Name of the default node pool"
  value       = digitalocean_kubernetes_cluster.doks_cluster.node_pool[0].name
}

output "node_count" {
  description = "Number of nodes in the default pool"
  value       = digitalocean_kubernetes_cluster.doks_cluster.node_pool[0].node_count
}

output "node_size" {
  description = "Size of the nodes in the default pool"
  value       = digitalocean_kubernetes_cluster.doks_cluster.node_pool[0].size
}

output "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  value       = "${path.module}/kubeconfig.yaml"
}

output "configure_kubectl" {
  description = "Command to configure kubectl to connect to the DOKS cluster"
  value       = "export KUBECONFIG=${path.module}/kubeconfig.yaml"
}

output "dashboard_url" {
  description = "URL to access the Kubernetes dashboard"
  value       = "https://cloud.digitalocean.com/kubernetes/clusters/${digitalocean_kubernetes_cluster.doks_cluster.id}/dashboard"
}

output "doctl_kubectl_command" {
  description = "Command to configure kubectl using doctl"
  value       = "doctl kubernetes cluster kubeconfig save ${digitalocean_kubernetes_cluster.doks_cluster.id}"
}
