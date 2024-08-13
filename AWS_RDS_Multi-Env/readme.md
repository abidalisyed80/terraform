#This Terraform code provisions the AWS RDS in given Envoirenmetn
# Feel free to ajdust the terrafrom.tfvars to your requrements
# Structure
#-------------  
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


#Initialize project from root
terrafrom init 

#to maintain state file separately for each env 
#create workspaces for each env
terraform  workspace new qa
terraform  workspace new stag
terraform  workspace new prod

#use workspace
terraform workspace select qa

#Plan
#---------
#QA
terrafrom plan --var-file=envs/qa/terraformz.tfvars
#STAG
terrafrom plan  --var-file=envs/stag/terraformz.tfvars
#PROD
terrafrom plan --var-file=envs/prod/terraformz.tfvars


#Deploy
#---------
#QA
terrafrom apply --var-file=envs/qa/terraformz.tfvars
#Stag
terrafrom apply --var-file=envs/stag/terraformz.tfvars
#Prod
terrafrom apply --var-file=envs/prod/terraformz.tfvars
