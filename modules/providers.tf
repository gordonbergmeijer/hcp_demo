terraform {
  required_providers {
    customprovider = {
      source  = "app.terraform.io/bergmeijer/customprovider" # Private registry URL
      version = ">= 1.0.0"
    }
  }
}

provider "customprovider" {
  # Provider configuration arguments go here
  api_key = var.private_api_key
}