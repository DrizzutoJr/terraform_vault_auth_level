variable "type" {
  description = "Type of Auth Engine being enabled"
}

variable "path" {
  description = "Path to enable Auth Engine at"
}

variable "description" {
  description = "Description for the Auth Engine"
}

variable "local" {
  description = "Determines if the auth engine should be replicated"
  default = false
}

resource "vault_auth_backend" "auth_engine" {
  type = var.type
  path = var.path
  description = var.description

  local = var.local
}

output "auth-engine" {
  value = "Auth Engine Enabled : ${var.type} mounted at ${var.path}"
}