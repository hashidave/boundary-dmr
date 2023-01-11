resource "boundary_scope" "project" {
  name                   = "Basic Boundary Demo"
  description            = "Dave's First Ever Boundary Demo!"
  scope_id               = var.se_demo_scope
  auto_create_admin_role = true
}


resource "boundary_host_catalog_plugin" "host_catalog" {
  count=0
  name            = "Dynamically Generated Catalog"
  description     = ""
  scope_id        = boundary_scope.project.id
  plugin_name     = "aws"
  attributes_json = jsonencode({ 
	"region" = "us-east-2"
	"disable_credential_rotation"=true
 
  })
 
  # recommended to pass in aws secrets using a file() or using environment variables
  # the secrets below must be generated in aws by creating a aws iam user with programmatic access
  secrets_json = jsonencode({
    "access_key_id"     = var.AWS_ACCESS_KEY_BOUNDARY_USER
    "secret_access_key" = var.AWS_SECRET_KEY_BOUNDARY_USER
  })
}

#resource "boundary_host_set_plugin" "host_set" {
#  name            = "Dynamic Host Set"
#  host_catalog_id = boundary_host_catalog_plugin.host_catalog.id
#  attributes_json = jsonencode({ "filters" = "tag:host-set=DMR_BOUNDARY_DEMO" })
#}




