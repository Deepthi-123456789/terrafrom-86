terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.45.0"
    }
  }
   backend "s3" {
    bucket = "terraform-s3-demo-123"
    key    = "remote-dynamic-block-demo"
    region = "us-east-1"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
