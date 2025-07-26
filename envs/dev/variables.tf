variable "ami" {
  type        = string
  description = "The AMI ID to use for the EC2 instance."
}

variable "instance_type" {
  type        = string
  description = "The type of EC2 instance to launch."
  default     = "t2.micro"
}
variable "access" {
  type = string

}
variable "secret" {
  type = string
}
variable "reg" {
  type = string
}

variable "pub_subnet1_cidr" {
  type        = string
  description = "CIDR block for public subnet 1"
}

variable "pub_subnet1_az" {
  type        = string
  description = "Availability zone for public subnet 1"
}

variable "pub_subnet2_cidr" {
  type        = string
  description = "CIDR block for public subnet 2"
}

variable "pub_subnet2_az" {
  type        = string
  description = "Availability zone for public subnet 2"
}

variable "private_subnet1_cidr" {
  type        = string
  description = "CIDR block for private subnet 1"
}

variable "private_subnet1_az" {
  type        = string
  description = "Availability zone for private subnet 1"
}