output "vm_public_ips" {
  value = [for vm in azurerm_linux_virtual_machine.prod_vm : vm.public_ip_address]
}
