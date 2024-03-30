output "vm_ids" {
  value = azurerm_virtual_machine.vm.*.id
}

output "vm_public_ips" {
  value = [for vm in azurerm_virtual_machine.vm : azurerm_public_ip.vm_pub_ip[vm.id].ip_address]
  # Ensure azurerm_public_ip resources are defined and associated with the VMs.
}
