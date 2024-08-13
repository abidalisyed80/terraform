# This terraforms code will deploy RDS, VPC and Security_group in AWS Cloud
# VPC will created with both public and private subnets
## Structure
```markdown
.
├── main.tf
├── variables.tf
├── outputs.tf
├── modules
│   ├── vpc
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── security_group
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   └── rds
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
└── terraform.tfvars
```

