variable "project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The zone within the region where resources will be created."
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "The machine type for Compute Engine instances."
  type        = string
  default     = "e2-medium"
}

variable "instance_count" {
  description = "Number of Compute Engine instances to create."
  type        = number
  default     = 2
}

variable "instance_image" {
  description = "The image used for Compute Engine instances."
  type        = string
  default     = "projects/debian-cloud/global/images/family/debian-10"
}
