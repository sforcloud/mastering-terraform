terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region_use
}


terraform {
  backend "s3" {
    bucket = "terraform-state-mumbai"
    key    = "mumbai-state-file"
    region = "ap-south-1"
  }
}
