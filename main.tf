provider "aws" {
  region = "ap-southeast-2"
}

terraform {
  backend "local" {
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "project_name" {
  description = "Common displayname to identify objects related to this project"
  default     = "<change-this-name!!>"
}

