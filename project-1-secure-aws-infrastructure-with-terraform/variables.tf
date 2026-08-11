variable "aws_region" {
  description = "AWS region to deploy resources in"
  type = string
  default = "us-east-1"
}

variable "project_name" {
  description = "Name prefix used for all resources"
  type = string
  default = "secure-aws-infra"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type = string
  default = "us-east-1a"
}

variable "my_ip" {
  description = "Your IP address in CIDR format, allowed to SSH into EC2"
  type = string
}

variable "bucket_suffix" {
  description = "Unique suffix for the S3 bucket name (bucket names must be globally unique)"
  type = string
}
variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance (Amazon Linux 2023, us-east-1)"
  type = string
  default = "ami-0c101f26f147fa7fd"
}