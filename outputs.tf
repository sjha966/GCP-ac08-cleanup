/*output "service_project_detached" {
  value = "Service project ${var.service_project} has been detached from host project ${var.host_project}."
}

output "subnet_deleted" {
  value = "Subnet ${var.subnet_name} in region ${var.region} has been deleted."
}*/

output "service_projects_detached" {
  value = [for project in var.service_projects : "Service project ${project} has been detached from host project ${var.host_project}."]
}

output "subnets_deleted" {
  value = [for subnet in var.subnets : "Subnet ${subnet.name} in region ${subnet.region} has been deleted."]
}
output "vpc_connectors_deleted" {
  value = [for connector in var.vpc_connectors : "VPC connector ${connector.name} in region ${connector.region} has been deleted."]
}

output "vms_deleted" {
  value = [for vm in var.vms : "VM ${vm.name} in zone ${vm.zone} has been deleted if it was stopped."]
}