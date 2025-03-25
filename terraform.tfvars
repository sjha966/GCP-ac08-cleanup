host_project    = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "ab73-np-outboundap-dev",
  "ab73-np-sharedcache-tcm",
   
]

subnets = [
  {
    name   = "vpc-prod-shared-euw4-ab73-np-outboundap-dev-subnet-032"
    region = "europe-west1"
  }, 
]

vpc_connectors = [
  {
    name   = "ac61-p-144201992812-slac0"
    region = "europe-west3"
  },
  {
    name   = "af34-np-426033393516-conn"
    region = "europe-west3"
  },
  {
    name   = "af35-p-106471940047-conn"
    region = "europe-west3"
  },
  {
    name   = "ac22-np-343214340988-conn"
    region = "europe-west4"
  },
  {
    name   = "ac80-p-722054454905-conn"
    region = "europe-west4"
  },
]