provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  allow_unverified_ssl = true
}

resource "vsphere_virtual_machine" "vm" {
  count            = var.vm_count
  name             = format("%s-%02d", var.vm_name_prefix, count.index + 1)
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
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

    customize {
      linux_options {
        host_name = format("%s-%02d", var.vm_name_prefix, count.index + 1)
        domain    = "localdomain"
      }

      network_interface {
        ipv4_address = "10.10.1.${count.index + 10}"
        ipv4_netmask = 24
      }

      ipv4_gateway    = "10.10.1.1"
      dns_server_list = ["10.10.1.2", "8.8.8.8"]
    }
  }
}
