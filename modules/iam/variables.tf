variable "cli_users" {
  type        = list(string)
  default     = ["engine", "ci"]
}

variable "full_users" {
  type        = list(string)
  default     = ["John Doe", "Aboubacar Maina"]
}

