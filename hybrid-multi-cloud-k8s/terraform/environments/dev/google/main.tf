provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "app_instance" {
  count        = var.instance_count
  name         = "dev-instance-${count.index}"
  machine_type = var.instance_type
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

  tags = ["dev", "webserver"]
}
