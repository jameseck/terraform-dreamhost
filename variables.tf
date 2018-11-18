variable "os_username" {
  description = "The username for the Tenant."
  default     = "myuser"
}

variable "os_project_name" {
  description = "The name of the Project."
  default     = "my_project"
}

variable "os_password" {
  description = "The password for the Tenant."
  default     = "my_password"
}

variable "os_auth_url" {
  description = "The endpoint url to connect to OpenStack."
  default     = "http://<HOSTNAME>:5000/v2.0"
}

variable "openstack_keypair" {
  description = "The keypair to be used."
  default     = "my_keypair"
}

variable "flavor_name" {
  description = "The Openstack flavour"
  default     = "gp1.warpspeed"
}
