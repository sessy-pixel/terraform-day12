terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "day12_lab" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}
