variable "cluster_name" {
  description = "my-eks-cluster"
  type        = string
}

variable "cluster_version" {
  description = "1.29"
  type        = string
}

variable "vpc_id" {
  description = "vpc-0123456789abcdef0"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "node_groups" {
  description = "EKS node group configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type  = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
}