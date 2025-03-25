resource "null_resource" "delete_vpc_connector" {
  for_each = { for connector in var.vpc_connectors : connector.name => connector }

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "gcloud compute networks vpc-access connectors delete ${each.value.name} --region=${each.value.region} --quiet"
  }
}