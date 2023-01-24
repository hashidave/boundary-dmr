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

variable "boundary_catalog_id" {
  description = "the catalog we put the hosts into"
  default     = ""
}

variable "TF_WORKSPACE_PWD" {
 description = "boundary user password"
 default     = ""
}

variable "se_demo_scope"{
  description = "The scope that I run all demos under"
  default="o_cDR15maeYo"
}

variable "AWS_ACCESS_KEY_BOUNDARY_USER"{
  description = "Access key for boundary IAM user"
  default="o_cDR15maeYo"
}


variable "AWS_SECRET_KEY_BOUNDARY_USER"{
  description = "Secret for boundary IAM user"
  default="o_cDR15maeYo"
}
