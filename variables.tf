variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "region" {
  type        = string
  description = "GCP region to create resources in"
  default     = "us-central1"
}

variable "network_name" {
  type        = string
  description = "Name of the VPC network"
  default     = "tf-vpc"
}

variable "public_subnet_name" {
  type        = string
  description = "Name of the public subnet"
  default     = "tf-public-subnet"
}

variable "private_subnet_name" {
  type        = string
  description = "Name of the private subnet"
  default     = "tf-private-subnet"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  type        = string
  description = "CIDR for the private subnet"
  default     = "10.0.2.0/24"
}
