terraform {
  required_version = "~> 1.0" # which means any version equal & above 1.01 like 1.15, 1.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}