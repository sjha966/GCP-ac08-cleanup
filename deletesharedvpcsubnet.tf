/*resource "null_resource" "delete_shared_vpc_subnet" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "gcloud compute networks subnets delete ${var.subnet_name} --region=${var.region} --quiet"
  }
}*/

resource "null_resource" "delete_shared_vpc_subnet" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "gcloud compute networks subnets delete ${each.value.name} --region=${each.value.region} --quiet"
  }
}