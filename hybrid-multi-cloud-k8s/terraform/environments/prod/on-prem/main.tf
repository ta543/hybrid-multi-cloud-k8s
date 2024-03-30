provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  allow_unverified_ssl = true
}

# Example resource definitions for creating VMs from a template
# Note: Actual implementation will require fleshing out these resources
# based on your specific vSphere environment details and VM configuration needs.

resource "vsphere_virtual_machine" "vm" {
  count             = var.vm_count
  name              = "${var.vm_name_prefix}-${format("%02d", count.index + 1)}"
  resource_pool_id  = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id      = data.vsphere_datastore.datastore.id

  num_cpus = 4
  memory   = 8192
  guest_id = data.vsphere_virtual_machine.template.guest_id

  network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = "disk0"
    size  = 50
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id
  }

  # Customize the VM further as needed
}
