# Dave's Boundary Environment


## Gonna need a few things
- An HCP Boundary cluster

- A Boundary user called "tf-workspace" with full rights to an org 

--Store the password in the TF_WORKSPACE_PWD var for now. (sensitive)
In a future rev we'll pull this out of vault.  

- The id of one or more users who should be project admins
-- store in the admin_principals variable

- A Boundary org id that will be used to create all these things
--store this in the se_org_scope variable

- AWS KEY and SECRET with rights to list AWS EC2 instances
-- Store in TF_AWS_ACCESS_KEY_BOUNDARY_USER and TF_AWS_SECRET_KEY_BOUNDARY_USER env variables

