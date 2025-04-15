host_project = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "aa63-p-recengine-cr-ver-6ebc",
  "aa63-p-recengine-crprod-7cff",
  "aa63-p-recengine-prod-db4b",

]

subnets = [
  {
    name   = "vpc-prod-shared-prod-euw4-aa63-p-recengine-cr-ver-6ebc-subnet54"
    region = "europe-west3"
  },

  {
    name   = "vpc-prod-shared-prod-euw4-aa63-p-recengine-crprod-7cff-subnet55"
    region = "europe-west3"
  },

  {
    name   = "vpc-prod-shared-prod-euw4-aa63-p-recengine-prod-db4b-subnet-014"
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