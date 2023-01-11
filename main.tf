#
# Required Providers
#
provider "hcp" {}

# My HCP Boundary instance
provider "boundary" {
  addr                            = "https://868bdfc7-61c6-4f31-b3a0-7bae78941aa0.boundary.hashicorp.cloud"
  auth_method_id                  = "ampw_Sce2pnCbl2"
  password_auth_method_login_name = "tf-workspace"
  password_auth_method_password   = var.TF_WORKSPACE_PWD
}

