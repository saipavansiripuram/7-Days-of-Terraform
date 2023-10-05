
# Terraform DynamoDB Table for Locking

In your Terraform project, it's essential to have a reliable mechanism for locking state files to prevent concurrent modifications. One way to achieve this is by using an Amazon DynamoDB table specifically designed for Terraform state locking.

## Terraform Lock DynamoDB Table Configuration

```hcl
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

```

Above code is used to create a DynamoDB table for Terraform state locking. The table has a single attribute, `LockID`, which is used by Terraform to lock state files.
