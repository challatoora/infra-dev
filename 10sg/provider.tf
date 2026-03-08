terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.33.0" # Terraform AWS provider version
    }
      
    }

    backend "s3" {
    bucket = "challatoor-dev"
    key    = "infradev_sg"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}