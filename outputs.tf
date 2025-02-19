output "service_project_detached" {
  value = "Service project ${var.service_project} has been detached from host project ${var.host_project}."
}

output "subnet_deleted" {
  value = "Subnet ${var.subnet_name} in region ${var.region} has been deleted."
}