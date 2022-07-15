# Edit cloud block as per details of your Terraform Cloud account
terraform {
  cloud {
    organization = "SisensePlayground"

    workspaces {
      name = "generic_sisense"
    }
  }

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.6.0"
    }
  }

  required_version = "~> 1.2.2"
}
