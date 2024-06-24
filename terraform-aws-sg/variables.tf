variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  #default     = "us-east-1"
}
variable "ami" {
  description = "The AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type"
  type        = string
  default     = "t2.micro"
}

variable "subnet" {
  description = "The subnet ID"
  type        = string
}

variable "sg" {
  description = "The security group IDs"
  type        = list(string)
}

variable "key" {
  description = "The key pair name"
  type        = string
}

variable "instance_count" {
  description = "The number of instances"
  type        = number
  default     = 1
}

