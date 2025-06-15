# E-Commerce WebApp Infrastructure on AWS

## 📦 Overview

This project sets up a **multi-environment infrastructure** for deploying an E-Commerce Web Application on AWS using **Terraform** and automated CI/CD with **GitHub Actions**.

It includes:
- Terraform Infrastructure as Code (IaC)
- Modular setup for VPC, ALB, EC2, RDS, and Security Groups
- GitHub Actions CI/CD pipeline for automated deployment
- Environment isolation (dev, staging, prod)

---

## 🏗️ Architecture

- **VPC**: Isolated network per environment
- **Subnets**: Public & private (2 AZs)
- **ALB**: Public Application Load Balancer
- **EC2**: Hosts application backend
- **RDS**: MySQL database backend
- **S3**: Optional static assets hosting
- **IAM**: Access control for services
- **Secrets Manager / SSM**: Secure credentials storage

---

## 📁 Folder Structure

```
project-4/
├── modules/                 # Terraform reusable modules
│   ├── vpc/
│   ├── ec2/
│   ├── alb/
│   ├── rds/
│   └── security_groups/
├── envs/                   # Environment-specific infrastructure
│   ├── dev/
│   ├── staging/
│   └── prod/
├── app/                    # Optional app code or Docker setup
├── .github/
│   └── workflows/
│       └── terraform-ci.yml
└── README.md
```

---

## 🚀 CI/CD via GitHub Actions

The workflow automatically:
- Lints Terraform code on PRs
- Runs `terraform plan` on PRs
- Applies changes on merge to `main`

Found in `.github/workflows/terraform-ci.yml`

---

## 🛠️ Usage

### 1. Configure Backend (S3 & DynamoDB)

Update `envs/dev/backend.tf`, `staging`, and `prod` with your own:

```hcl
terraform {
  backend "s3" {
    bucket         = "your-backend-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
  }
}
```

### 2. Deploy an Environment

```bash
cd envs/dev
terraform init
terraform plan
terraform apply
```

### 3. Add Secrets

Store environment variables in:
- GitHub Secrets
- AWS SSM or Secrets Manager

---

## 📈 Goals

- Scalable E-Commerce infra on AWS
- Dev/Stage/Prod isolation
- Fully automated CI/CD pipeline
- Modular, reusable code

---

## 👤 Author

**Raj Patel**  
🔗 [github.com/patelraj-41299](https://github.com/patelraj-41299)
