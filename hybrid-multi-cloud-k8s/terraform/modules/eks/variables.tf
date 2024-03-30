variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "my-eks-cluster"
}

variable "region" {
  description = "The AWS region where the EKS cluster will be created"
  type        = string
  default     = "us-west-2"
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "my-node-group"
}

variable "node_instance_type" {
  description = "Instance type of the EKS nodes"
  type        = string
  default     = "t3.medium"
}

variable "node_desired_capacity" {
  description = "The desired number of nodes in the node group"
  type        = number
  default     = 2
}

variable "node_min_capacity" {
  description = "The minimum number of nodes in the node group"
  type        = number
  default     = 1
}

variable "node_max_capacity" {
  description = "The maximum number of nodes in the node group"
  type        = number
  default     = 3
}
