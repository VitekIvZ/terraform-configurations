terraform {
  required_version = "0.14.10"
  backend "consul" {
      address = "http://192.168.206.133:8500"
      scheme = "http"
      path = "dc1/v1/dev/bind/terraform.tfstate"
      lock = true
  }

  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = ">= 3.0.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.6.0"
    }
    minio = {
      source = "aminueza/minio"
      version = ">= 1.0.0"
    }
    consul = {
      source  = "hashicorp/consul"
      version = ">= 2.11.0"
    }
  }
}