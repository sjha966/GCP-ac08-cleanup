To cleanup existing resources from old shared vpc hub environment in GCP environment.
terraform init -backend-config=backend.tfvars
 terraform plan -var-file="terraform.tfvars"
 terraform apply -var-file="terraform.tfvars


To ignore large files:
git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'

