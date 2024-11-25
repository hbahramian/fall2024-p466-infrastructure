# Sets global variables for this Terraform project.

variable app_name {
  default = "p466fall2024"
}

variable location {
  default = "westus"
}

variable kubernetes_version {
  default = "1.30"
}

variable "postgres_admin_username" {
  default = "admin410"
}
variable "postgres_admin_password" {
  default = "p466password321!"
}
