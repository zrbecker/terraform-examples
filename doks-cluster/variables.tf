variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "Name of the DOKS cluster"
  type        = string
  default     = "doks-cluster-example"
}

variable "region" {
  description = "DigitalOcean region"
  type        = string
  default     = "nyc1"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the DOKS cluster - https://slugs.do-api.dev/"
  type        = string
  default     = "1.32.1-do.0"
}

variable "node_pool_name" {
  description = "Name of the default node pool"
  type        = string
  default     = "worker-pool"
}

variable "node_size" {
  description = "Size of the worker nodes (Droplet size) - https://slugs.do-api.dev/"
  type        = string
  default     = "s-4vcpu-8gb-amd"
}

variable "node_count" {
  description = "Number of worker nodes in the default pool"
  type        = number
  default     = 1
}
