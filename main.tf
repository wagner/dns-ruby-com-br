terraform {
  cloud {
    organization = "ruby-com-br"

    workspaces {
      name = "dns-ruby-com-br"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "pessoal"
}
