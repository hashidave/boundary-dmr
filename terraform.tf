terraform {
  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
    }
  }
 cloud {
  organization = "hashi-DaveR"
  hostname     = "app.terraform.io"

  workspaces {
    tags = ["boundary-environment"]
  }
 }
}
