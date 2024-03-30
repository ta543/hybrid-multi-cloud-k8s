provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "staging_instance" {
  count        = var.instance_count
  name         = "staging-instance-${format("%03d", count.index)}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  tags = ["staging", "webserver"]
}
