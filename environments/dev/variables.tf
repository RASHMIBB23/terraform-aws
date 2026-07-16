variable "project_name" {
  default = "rashmi-devops"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "ami_id" {
  default = "ami-0c809520a0d652e03"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "instance_count" {
  default = 2
}
