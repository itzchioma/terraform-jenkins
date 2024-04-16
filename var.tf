# aws_access_key
variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = ""
}

# AWS secret key
variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""
}

# AWS region
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

# Ubuntu AMI ID
variable "ami" {
  type        = string
  description = "Ubuntu AMI ID"
  default     = "ami-080e1f13689e07408"
}

# Instance type
variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}

# Name of the EC2 instance
variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
  default     = "terraform-jenkins"
}

# Key to access the EC2 instance
variable "key_name" {
    description = "Key to access the EC2 instance"
    type = string
    default = "test"
}