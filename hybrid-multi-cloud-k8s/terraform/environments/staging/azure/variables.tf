variable "resource_group_name" {
  description = "The name of the resource group for the staging environment."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

variable "vm_size" {
  description = "The size of the Azure Virtual Machine."
  type        = string
  default     = "Standard_DS1_v2"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM."
  type        = string
  sensitive   = true
}

variable "instance_count" {
  description = "The number of Virtual Machine instances to create."
  type        = number
  default     = 2
}

variable "image_publisher" {
  description = "The publisher of the VM image."
  default     = "Canonical"
}

variable "image_offer" {
  description = "The offer of the VM image."
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "The SKU of the VM image."
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "The version of the VM image."
  default     = "latest"
}
