variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "internet_gateway_id" {
  description = "The Internet Gateway ID"
  type        = string
}
