terraform {
    required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = " 6.52.0"

    }
  }
  backend "s3" {
    bucket       = "remote-state-88-dev"
    key          = "roboshop-dev-eks-open"
    use_lockfile = true
    encrypt      = true
    region       = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}