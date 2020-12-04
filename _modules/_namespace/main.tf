variable "namespace_name" {
  description = " The name for the new service namespace"
}

resource "vault_namespace" "new_namespace" {
  path = var.namespace_name
}

output "namespace" {
  value = "Namespace created : ${var.namespace_name}"
}
