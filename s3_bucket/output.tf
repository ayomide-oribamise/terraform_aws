# This output block defines an output variable named "bucket" that represents the AWS S3 bucket.
output "bucket" {
    description = "Bucket"
    value = aws_s3_bucket.example_bucket.bucket
}