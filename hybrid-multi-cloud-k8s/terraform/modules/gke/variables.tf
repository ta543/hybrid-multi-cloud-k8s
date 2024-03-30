variable "project_id" {
  description = "The ID of the project in which the cluster will be created"
  type        = string
}

variable "location" {
  description = "The location (region or zone) of the cluster"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "my-gke-cluster"
}

variable "node_count" {
  description = "The number of nodes to create in the cluster"
  type        = number
  default     = 3
}

variable "machine_type" {
  description = "The machine type of the cluster's nodes"
  type        = string
  default     = "e2-medium"
}
