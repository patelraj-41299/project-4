terraform {
  backend "s3" {
    bucket         = "project4-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    use_lock_table = true
    dynamodb_table = "project4-terraform-lock"
  }
}

