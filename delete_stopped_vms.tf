resource "null_resource" "delete_stopped_vm" {
  for_each = { for vm in var.vms : vm.name => vm }

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = <<EOT
      STATUS=$(gcloud compute instances describe ${each.value.name} --zone=${each.value.zone} --format="get(status)")
      if [ "$STATUS" = "TERMINATED" ]; then
        gcloud compute instances delete ${each.value.name} --zone=${each.value.zone} --quiet
      fi
    EOT
  }
}