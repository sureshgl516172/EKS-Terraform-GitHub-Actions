terraform {
  required_version = "~> 1.14.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket       = "my-ews-baket1-555678845265"
    region       = "us-east-1"
    key          = "eks/terraform.tfstate"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.aws-region
}
