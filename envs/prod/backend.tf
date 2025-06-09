terraform {
  backend "s3" {
    bucket         = "project4-terraform-state"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "project4-terraform-lock"
  }
}

