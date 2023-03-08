#
# Required Providers
#
provider "hcp" {}

# My HCP Boundary instance
provider "boundary" {
  addr                            = var.boundary_addr
  auth_method_id                  = var.boundary_auth_method_id
  password_auth_method_login_name = var.boundary_login_name
  password_auth_method_password   = var.TF_WORKSPACE_PWD
}

