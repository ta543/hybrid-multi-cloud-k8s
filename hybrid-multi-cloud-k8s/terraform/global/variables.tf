variable "project_id" {
  description = "The ID of the project where the VPC will be created"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC to be created"
  type        = string
  default     = "shared-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
