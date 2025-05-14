variable "ami_id" {
  type        = string
}

variable "instances" {
  description = "List of instance details "
  type = list(object({
    instance_type = string
    volume_type   = string
    volume_size   = number
    key_name      = string
  }))
}

