terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }
  backend "s3" {
    bucket         = "rm550801-tfstate-staticsite01"
    key            = "terraform.tfstate"
    dynamodb_table = "rm550801-tb-tfstate-staticsite01"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}