# The Root Provicer

provider "vault" {

  alias = "root"

  address = var.vault_address
  cert_file = var.cert_file

  namespace = ""

  auth_login {
    path = "<operator_path>"

    parameters = {
      role_id = var.role_id
      secret_id = var.secret_id
    }
  }
}