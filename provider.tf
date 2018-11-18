provider "openstack" {
  user_name   = "${var.os_username}"
  tenant_name = "${var.os_project_name}"
  password    = "${var.os_password}"
  auth_url    = "${var.os_auth_url}"
}
