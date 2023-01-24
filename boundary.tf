resource "boundary_scope" "project" {
  name                   = "Basic Boundary Demo ${var.environment}"
  description            = "First Ever Boundary Demo - ${var.environment}"
  scope_id               = var.se_org_scope
  auto_create_admin_role   = true
  auto_create_default_role = true
}

# Grant rights to the project scope to you, the admins
resource "boundary_role" "project_admin" {
  name          = "SE Project Admin ${var.environment}"
  description   = "Admin for the Boundary Demo ${var.environment} Project"
  principal_ids = var.admin_principals
  grant_strings = ["id=*;type=*;actions=*"]
  scope_id      = boundary_scope.project.id
}


resource "boundary_host_catalog_plugin" "host_catalog" {
  name            = "Dynamic AWS Hosts - us-east-2 ${var.environment}"
  description     = "${var.environment} dynamic aws host set"
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


