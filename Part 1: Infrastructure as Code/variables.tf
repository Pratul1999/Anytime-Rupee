variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "instance_type" {
  description = "EC2 instance type for ASG"
  default     = "t3.micro"
}

variable "key_name" {
  description = "Name of the existing key pair to enable SSH access"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR block to allow SSH access from bastion host"
  default     = "0.0.0.0/0"
}

variable "db_username" {
  description = "RDS master username"
  default     = "admin"
}

variable "db_password" {
  description = "RDS master password"
  type        = string
  sensitive   = true
}

variable "asg_desired_capacity" {
  description = "Desired capacity of ASG"
  default     = 2
}

variable "asg_min_size" {
  description = "Minimum size of ASG"
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum size of ASG"
  default     = 3
}
