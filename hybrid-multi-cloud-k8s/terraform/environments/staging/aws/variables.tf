variable "project_name" {
  description = "The name of the project, used to tag resources."
  type        = string
}

variable "aws_region" {
  description = "The AWS region where resources will be created."
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type for the application servers."
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances."
  type        = string
}

variable "instance_count" {
  description = "The number of EC2 instances to launch for the application servers."
  type        = number
  default     = 2
}
