variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "region" {
  description = "The GCP region."
  type        = string
}
