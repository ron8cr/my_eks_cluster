variable "vpc_id" {
  description = "ID of the VPC"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "private_subnet_ids" {
  description = "IDs of the private subnets"
  type        = list(string)
}
