host_project    = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "ad17-p-bank-shared-8c56",
   
]

subnets = [
  {
    name   = "vpc-prod-shared-prod-euw4-ac16-p-ingbatch-prd-8fb6-subnet-005"
    region = "europe-west4"
  },
 
 {
    name   = "vpc-prod-shared-prod-euw4-ac16-p-ingstream-prd-subnet-002"
    region = "europe-west4"
  },

   {
    name   = "vpc-prod-shared-prod-euw4-ac16-p-sharedcache-prd-a95a-subnet-15"
    region = "europe-west4"
  },
  
]