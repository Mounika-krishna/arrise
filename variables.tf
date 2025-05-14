variable "ami_id" {
  type        = string
}

variable "instances" {
  type = list(object({
    instance_type = string
    volume_type   = string
    volume_size   = number
    key_name      = string
  }))
}

variable "cli_users" {
  type        = list(string)
}


variable "full_users" {
  type        = list(string)
}

