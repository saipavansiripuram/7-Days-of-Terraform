provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "saipavan" {
  instance_type = "t2.micro"
  ami = "ami-657868898968" # replace this with your AMI
  subnet_id = "subnet-019ea91ed9b5252e7" # replace this 
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "saipavans3-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

