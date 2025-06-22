resource "digitalocean_kubernetes_cluster" "doks_cluster" {
  name    = var.cluster_name
  region  = var.region
  version = var.kubernetes_version
  
  node_pool {
    name       = var.node_pool_name
    size       = var.node_size
    node_count = var.node_count
  }
}

# Save kubeconfig to a local file
resource "local_file" "kubeconfig" {
  content  = digitalocean_kubernetes_cluster.doks_cluster.kube_config[0].raw_config
  filename = "${path.module}/kubeconfig.yaml"
}
