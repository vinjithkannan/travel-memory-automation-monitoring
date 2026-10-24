variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "aws_profile" {
  description = "Optional AWS CLI profile; empty uses the default credential chain"
  type        = string
  default     = "mern-lab"
}

variable "project_name" {
  type    = string
  default = "travelmemory"
}

variable "my_ip_cidr" {
  description = "Your current public IPv4 CIDR for SSH, e.g. 203.0.113.10/32"
  type        = string
  validation {
    condition     = can(cidrhost(var.my_ip_cidr, 0)) && can(regex("/32$", var.my_ip_cidr))
    error_message = "Set your own public IPv4 address with /32, e.g. 198.51.100.25/32."
  }
}

variable "public_key_path" {
  description = "Absolute path to the SSH public key (not private key)"
  type        = string
}

variable "web_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "db_instance_type" {
  type    = string
  default = "t3.micro"
}

variable "root_volume_size" {
  type    = number
  default = 8
}
