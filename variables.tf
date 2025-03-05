variable "host_project" {
  description = "The ID of the host project"
  type        = string
}

/*variable "service_project" {
  description = "The ID of the service project to detach"
  type        = string
}*/

/*variable "subnet_name" {
  description = "The name of the subnet to delete"
  type        = string
}*/

variable "service_projects" {
  description = "List of service projects to detach"
  type        = list(string)
}

variable "subnets" {
  description = "List of subnets to delete"
  type        = list(object({
    name   = string
    region = string
  }))
  }

/*variable "region" {
  description = "The region where the subnet is located"
  type        = string
}*/