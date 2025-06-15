terraform {
  backend "s3" {
    bucket         = "project4-tf-state-us-east-1"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
