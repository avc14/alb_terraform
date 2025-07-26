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