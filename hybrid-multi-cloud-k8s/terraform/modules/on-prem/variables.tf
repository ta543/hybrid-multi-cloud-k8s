variable "vsphere_server" {
  description = "vCenter server for the vSphere cluster"
  type        = string
}

variable "vsphere_user" {
  description = "User for vSphere authentication"
  type        = string
}

variable "vsphere_password" {
  description = "Password for vSphere authentication"
  type        = string
  sensitive   = true
}

variable "datacenter_name" {
  description = "The name of the datacenter in vSphere"
  type        = string
}

variable "cluster_name" {
  description = "The name of the cluster in vSphere where VMs will be deployed"
  type        = string
}

variable "datastore_name" {
  description = "The name of the datastore in vSphere for VM disk storage"
  type        = string
}

variable "network_name" {
  description = "The network name in vSphere for VM networking"
  type        = string
}

variable "vm_template" {
  description = "The template name in vSphere to clone for new VMs"
  type        = string
}

variable "vm_count" {
  description = "The number of VMs to create for the Kubernetes cluster"
  type        = number
  default     = 3
}

variable "vm_name_prefix" {
  description = "Prefix for naming VMs"
  type        = string
  default     = "kube-node"
}
