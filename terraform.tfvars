host_project    = "ica-shared-vpc-host-project"
#service_project = "af35-p-aph-ml-mvp-ana-75e7"
#subnet_name  = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
#region       = "europe-west4"

service_projects = [
  "af35-p-aph-ml-mvp-ana-75e7",
  "af35-p-aph-ml-mvp-ppr-9996",
  "af35-p-aph-ml-mvp-prd-149a",
  "af35-p-aph-reme-ana-99b4",
  "af35-p-aph-reme-prd-e3c9"
]

subnets = [
  {
    name   = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ana-75e7-subnet29"
    region = "europe-west4"
  },
  {
    name   = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-ppr-9996-subnet30"
    region = "europe-west4"
  },
  {
    name   = "vpc-prod-shared-prod-euw4-af35-p-aph-ml-mvp-prd-149a-subnet-26"
    region = "europe-west4"
  },
  {
    name   = "vpc-prod-shared-prod-euw4-af35-p-aph-reme-ana-99b4-subnet45"
    region = "europe-west4"
  },
  {
    name   = "vpc-prod-shared-prod-euw4-af35-p-aph-reme-prd-e3c9-subnet46"
    region = "europe-west4"
  }
]