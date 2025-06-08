# Project 4: Multi-Environment Scalable Web Application Infrastructure on AWS

## 🌐 Overview
This project provisions secure, scalable, and environment-specific AWS infrastructure using Terraform and integrates with GitHub Actions for CI/CD.

## 📦 Technologies Used
- Terraform (Infrastructure as Code)
- AWS (VPC, EC2, RDS, ALB, S3, IAM)
- GitHub Actions (CI/CD pipeline)
- Optional: Dockerized App (Flask/Node.js)

## 📁 Folder Structure
project-root/
├── modules/
│   └── vpc, ec2, rds, alb, security_groups
├── envs/
│   └── dev, staging, prod
├── .github/workflows/
│   └── terraform-ci.yml
└── app/ (optional app code)

## 🔧 Environments
- `dev`: active CI/CD + test resources
- `staging`: near-prod mimic
- `prod`: production-ready

## 🚀 CI/CD Pipeline (via GitHub Actions)
- `terraform fmt` + `plan` on PR
- `apply` on merge to `main`
- Uses GitHub secrets for AWS credentials

## 🐳 Optional App Deployment
- Deploy a Dockerized Flask/Node.js app to EC2 or ECS
- Expose via ALB DNS

## 📜 License
MIT

