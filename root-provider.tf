# The Root Provicer

provider "vault" {

  alias = "root"

  address = var.vault_address
  ca_cert_file = var.ca_cert_file

  namespace = ""

  auth_login {
    path = var.operator_path

    parameters = {
      role_id = var.role_id
      secret_id = var.secret_id
    }
  }
}