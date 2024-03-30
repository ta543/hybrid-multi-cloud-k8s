provider "google" {
  project = var.project_id
  region  = var.location
}

resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.location

  remove_default_node_pool = true
  initial_node_count = 1

  node_pool {
    name       = "default-pool"
    node_count = var.node_count

    node_config {
      machine_type = var.machine_type
    }
  }
}
