# Terraform AWS Infrastructure Setup

## Overview

This Terraform setup provisions the following:

- VPC with public and private subnets across 2 Availability Zones
- Internet Gateway and NAT Gateways
- Route Tables with appropriate routing
- Application Load Balancer (ALB) in public subnets
- Auto Scaling Group (ASG) with EC2 instances in private subnets
- RDS PostgreSQL instance in private subnets
- Bastion host in public subnet for SSH access
- Security groups configured according to requirements

---

## Prerequisites

- Terraform installed (version >= 1.0 recommended)
- AWS CLI configured with proper credentials
- Existing EC2 Key Pair in your AWS account for SSH access

---

## Deployment Steps

1. Clone or download this repository.

2. Update the `terraform.tfvars` file or use environment variables to provide:
   - `key_name`: Your EC2 key pair name
   - `db_password`: Password for RDS master user
   - Optionally, adjust other variables as needed in `variables.tf` or override with `terraform.tfvars`

3. Initialize Terraform:

```bash
terraform init
