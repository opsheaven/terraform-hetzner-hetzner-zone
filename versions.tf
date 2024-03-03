terraform {
  required_version = "~> 1.7"

  required_providers {
    github = {
      source  = "opsheaven/hetzner"
      version = "~> 0.1"
    }
  }
}
