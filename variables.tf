##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

# should be dev or production
variable "environment"{
  default = "dev"
}

# The auth method ID for the Boundary "tf-workspace" user
variable "boundary_auth_method_id"{
}

# the Boundary user principal IDs for anyone who should have acces to our project
variable "admin_principals"{
}


# TODO:  Pull this out of vault.  I have stored in HCP under boundary-env/tf-workspace
variable "TF_WORKSPACE_PWD" {
 description = "boundary user password"
 default     = ""
}

# TODO:  We really ought to create the org as part of this project. 
# Future Dave can do that
variable "se_org_scope"{
  description = "The org scope that I run all demos under"
}


variable "AWS_ACCESS_KEY_BOUNDARY_USER"{
  description = "Access key for boundary IAM user"
  default="nochance"
}


variable "AWS_SECRET_KEY_BOUNDARY_USER"{
  description = "Secret for boundary IAM user"
  default="narnia"
}

variable "boundary_addr"{
}

variable "boundary_login_name" {
  default= "tf-workspace"
}
