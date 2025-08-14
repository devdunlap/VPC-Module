terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "terraform/state"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
    
    # Additional security options
    kms_key_id     = "arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012"
    sse_algorithm  = "aws:kms"
  }
}

