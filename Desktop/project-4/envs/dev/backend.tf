terraform {
  backend "s3" {
    bucket         = "your-tf-state-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
  }
}