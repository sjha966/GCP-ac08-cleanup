This setup is used for decommissioning of all the resources in our old landing zone in GCP.

SOme useful commands:
To cleanup existing resources from old shared vpc hub environment in GCP environment.
terraform init -backend-config=backend.tfvars
 terraform plan -var-file="terraform.tfvars"
 terraform apply -var-file="terraform.tfvars


To ignore large files:
git filter-branch -f --index-filter 'git rm --cached -r --ignore-unmatch .terraform/'



git clone https://github.com/your-repo.git  # Clone your test repo
git status  # Check repo status
git add .   # Stage changes
git commit -m "Decomissioning started"  # Commit changes
git push    # Push to remote

Level 1:
Command	                     Purpose	                         Pro Tip
terraform init -upgrade	Force provider upgrades, even if locked	Use -backend=false to skip backend init for partial workflows
terraform plan -refresh-only -out=tfplan	Generate a refresh-only plan (updates state without changes)	Pipe output to jq for JSON parsing: terraform show -json tfplan | jq '.'
terraform apply -parallelism=1	Serial execution for dependency-sensitive resources	Pair with TF_CLI_ARGS="-no-color" for CI/CD pipelines
terraform destroy -target=aws_instance.legacy	Surgical destruction	Combine with -var-file=prod.tfvars for environment-specific teardowns
terraform state list	List all resources in state	Filter with grep: terraform state list | grep "aws_lambda"

Level 2:
Command	                                                Use Case	                         Example
terraform state mv aws_s3_bucket.old aws_s3_bucket.new	Rename resources without recreation	Critical for refactoring without downtime
terraform state rm aws_iam_policy.deprecated	Remove stale resources from state	Use after manual cloud console deletions
terraform import aws_vpc.prod vpc-0abcdef12345	Adopt existing infra into Terraform	Generate config with terraform plan -generate-config-out=imported.tf
terraform state pull > state.json	Edit state manually (DANGER ZONE)	Use jq to patch state, then terraform state push state.json
terraform force-unlock LOCK_ID	Break state locks	Only if you’re 100% sure no one else is running Terraform

Level 3:
Command	                         What It Does	                    Secret Sauce
TF_LOG=TRACE terraform apply	Verbose logging (trace API calls)	Redirect logs: TF_LOG=DEBUG terraform apply 2> debug.log
terraform console	REPL for expressions	Test complex for loops or merge() functions interactively
terraform validate -json	Validate syntax + get JSON feedback	Integrate with pre-commit hooks for auto-validation
terraform providers schema -json	Dump provider schemas	Use to auto-generate docs or validate variable types
terraform graph | dot -Tsvg > graph.svg	Visualize resource dependencies	Identify circular dependencies or orphaned resources

