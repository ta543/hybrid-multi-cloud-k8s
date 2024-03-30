output "vm_public_ip" {
  value = azurerm_public_ip.dev_vm_ip.ip_address
}

# Note: Ensure azurerm_public_ip.dev_vm_ip is defined and associated with your VM
