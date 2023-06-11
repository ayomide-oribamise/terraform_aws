# Define an AWS S3 bucket resource named "example_bucket"
resource "aws_s3_bucket" "example_bucket" {
  
  # Unique bucket name
  bucket = "example-bucket-cloudnspace"
  
 # Enable versioning for the S3 bucket
  versioning {
    enabled = true
  }
  
  # Add tags to the S3 bucket for categorization and organization
  tags = {    
    Environment = "dev"
  }
}