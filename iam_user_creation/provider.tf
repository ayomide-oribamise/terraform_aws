# Declare the required provider and version of AWS.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider with a specific region.
provider "aws" {
  region = "us-east-1"
}
