# Terraform AWS Infrastructure

Automated provisioning of a multi-tier AWS infrastructure using Terraform, integrated with Jenkins CI/CD.

## Architecture
- **VPC** with public/private subnets across 2 AZs
- **NAT Gateway** and **Internet Gateway** for controlled internet access
- **EC2** instances (t3.micro) in private subnets, managed via IAM role + AWS SSM (no SSH keys needed)
- **Application Load Balancer** distributing traffic to EC2 instances
- **RDS (MySQL)** database in private subnets, accessible only from EC2 security group
- **Remote state** stored in S3 with DynamoDB state locking
- **Jenkins pipeline** automating terraform plan/apply with a manual approval gate

## Project Structure
\`\`\`
terraform-aws-infra/
├── modules/
│   ├── vpc/
│   ├── iam/
│   ├── ec2/
│   ├── alb/
│   └── rds/
├── environments/
│   └── dev/
├── Jenkinsfile
└── README.md
\`\`\`

## Usage
\`\`\`bash
cd environments/dev
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
\`\`\`

## Related Project
Deployed application (Spring Boot + React, Dockerized, Kubernetes manifests):
[spring-react-docker-kubernetes](https://github.com/RASHMIBB23/spring-react-docker-kubernetes)
this is terraform project
