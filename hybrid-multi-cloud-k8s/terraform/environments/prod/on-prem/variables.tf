variable "vsphere_server" {
  description = "The vCenter server for the vSphere environment."
  type        = string
}

variable "vsphere_user" {
  description = "Username for vSphere authentication."
  type        = string
}

variable "vsphere_password" {
  description = "Password for vSphere authentication."
  type        = string
  sensitive   = true
}

variable "datacenter_name" {
  description = "Name of the vSphere datacenter."
  type        = string
}

variable "cluster_name" {
  description = "Name of the vSphere cluster."
  type        = string
}

variable "datastore_name" {
  description = "Name of the vSphere datastore."
  type        = string
}

variable "network_name" {
  description = "The network name for VM connectivity."
  type        = string
}

variable "vm_template_name" {
  description = "The template to use for creating VMs."
  type        = string
}

variable "vm_count" {
  description = "Number of VMs to create."
  type        = number
  default     = 3
}

variable "vm_name_prefix" {
  description = "Prefix for the VM names."
  type        = string
  default     = "prod-vm"
}
