output "instance_public_ips" {
  value = google_compute_instance.app_instance.*.network_interface.0.access_config.0.nat_ip
}
