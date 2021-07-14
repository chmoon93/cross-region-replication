terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = ">= 3.47"
  }
}

provider "aws" {
  region = "ap-northeast-2"  
}