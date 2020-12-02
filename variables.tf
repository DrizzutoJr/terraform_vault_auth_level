# Define global variables

variable "vault_address" {
  description = "URL Address of Vault Instance"
}

variable "role_id" {
  description = "Role ID for Terraform Provisioner"
}

variable "secret_id" {
  description = "Secret ID for Terraform Provisioner"
}

variable "cert_file" {
  description = "Path to CERT (store in _resouces)"
  default = "./_resources/cert.pem"
}