terraform {
  cloud {
    organization = "pvmtriet"
    # hostname = "app.terraform.io"

    workspaces {
      name = "infras"
    }
  }
  required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 5.11"
      }
    }

    required_version = ">= 1.2.0"
}


