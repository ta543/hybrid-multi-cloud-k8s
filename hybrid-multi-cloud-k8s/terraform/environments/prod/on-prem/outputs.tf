output "vm_ids" {
  value = vsphere_virtual_machine.vm.*.id
}
