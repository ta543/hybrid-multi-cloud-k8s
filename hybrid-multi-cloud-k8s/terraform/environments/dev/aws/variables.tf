variable "project_name" {
  description = "The name of the project, used to tag resources"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use for the main server"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the server"
  type        = string
}
