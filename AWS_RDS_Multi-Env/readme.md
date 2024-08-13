# This Terraform code provisions the AWS RDS in the given environment
# This code will create VPC, Security Group, and RDS
# Feel free to adjust the terraform.tfvars to your requirements
# -----------------------
# Structure

```markdown
terraform_project/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── security_group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── rds/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── envs/
    ├── qa/
    │   ├── terraform.tfvars
    ├── stag/
    │   ├── terraform.tfvars
    └── prod/
        ├── terraform.tfvars
```

# Initialize project from root
```bash
terraform init 
```
# To maintain state files separately for each env 
create workspaces for each env
```bash
terraform  workspace new qa
terraform  workspace new stag
terraform  workspace new prod
```
use workspace
```bash
terraform workspace select qa
```

# Plan

* QA

```bash
terrafrom plan --var-file=envs/qa/terraformz.tfvars
```

* STAG

```bash
terrafrom plan  --var-file=envs/stag/terraformz.tfvars
```

* PROD

```bash
terrafrom plan --var-file=envs/prod/terraformz.tfvars
```

# Deploy

* QA
```bash
terrafrom apply --var-file=envs/qa/terraformz.tfvars
```

* Stag

```bash 
terrafrom apply --var-file=envs/stag/terraformz.tfvars
```

* Prod

```bash 
terrafrom apply --var-file=envs/prod/terraformz.tfvars
```
# Steps to Destroy Only QA
* Step 1: Navigate to the QA Environment Directory
First, change your working directory to the QA environment:

```bash
cd terraform_project/envs/qa
```
* Step 2: Destroy the QA Environment Resources
Run the terraform destroy command to destroy the resources associated with the QA environment:

```bash
terraform destroy -var-file=terraform.tfvars
```
