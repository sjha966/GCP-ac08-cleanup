host_project = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "ac16-p-gitops-inf-shared-8067",
  "aa63-p-recengine-crprod-7cff",
  "aa63-p-recengine-prod-db4b",

]

subnets = [
  {
    name   = "vpc-prod-shared-ver-euw4-clouddw-subnet-001"
    region = "europe-west4"
  },

  {
    name   = "vpc-prod-shared-euw4-ac16-p-gitops-inf-shared-8067-subnet-009"
    region = "europe-west4"
  },

  {
    name   = "vpc-prod-sharedservices-euw4-splunk-ab70-subnet-002"
    region = "europe-west4"
  },

]

vpc_connectors = [
  {
    name   = "aa63-np-connector"
    region = "europe-west3"
  },


  {
    name   = "aa63-p-recengine-connecto"
    region = "europe-west3"
  },

  {
    name   = "vpc-recengine-prod-connec"
    region = "europe-west3"
  },

]

vms = [
  {
    name = "instance-1"
    zone = "europe-west4-a"
  },

]