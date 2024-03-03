provider "hetzner" {}

terraform {
  required_version = "~> 1.7"

  required_providers {
    hetzner = {
      source  = "registry.terraform.io/opsheaven/hetzner"
      version = "~> 0.1"
    }
  }
}
