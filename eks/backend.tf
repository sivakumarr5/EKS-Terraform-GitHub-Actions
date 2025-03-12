terraform {
  required_version = "~> 1.11.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-siva-tf-bucket"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
