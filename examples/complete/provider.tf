provider "hetzner" {}

terraform {
  required_version = "~> 1.7"

  required_providers {
    hetzner = {
      source  = "opsheaven/hetzner"
      version = "~> 0.2"
    }
  }
}
