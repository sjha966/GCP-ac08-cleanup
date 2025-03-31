host_project    = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "ae40-np-prd-self-srv-seed-4b5d",

]

subnets = [
  {
    name   = "vpc-prod-shared-euw4-ae40-np-prd-self-srv-seed-4b5d-subnet-035"
    region = "europe-west4"
  },  

]

vpc_connectors = [
  {
    name   = "ac61-p-144201992812-slac0"
    region = "europe-west3"
  },
]

vms = [
  {
    name   = "instance-1"
    zone   = "europe-west4-a"
  },
  {
    name   = "kafka-testvm"
    zone   = "europe-west4-b"
  },
  
]