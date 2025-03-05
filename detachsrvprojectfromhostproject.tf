/*resource "null_resource" "detach_service_project" {
  triggers = {
    always_run = "${timestamp()}"
  }
  provisioner "local-exec" {
    command = "gcloud compute shared-vpc associated-projects remove --host-project=${var.host_project} ${var.service_project} --quiet"
  }
}*/

resource "null_resource" "detach_service_project" {
  for_each = toset(var.service_projects)

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "gcloud compute shared-vpc associated-projects remove --host-project=${var.host_project} ${each.value} --quiet"
  }
}