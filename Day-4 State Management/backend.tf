terraform {
  backend "s3" {
    bucket         = "saipavan-s3" # change this
    key            = "saipavan/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}