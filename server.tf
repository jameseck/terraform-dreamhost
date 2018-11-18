resource "openstack_compute_instance_v2" "server" {
  name        = "server"
  image_id    = "7b055337-0e66-480d-be3d-4217abd2ec2c"
  flavor_name = "${var.flavor_name}"
  key_pair    = "${openstack_compute_keypair_v2.je.id}"

  security_groups = ["${openstack_networking_secgroup_v2.server.id}"]

  network {
    name = "public"
  }

  user_data = "${file("bootstrapweb.sh")}"

  provisioner "remote-exec" {
    inline = [
      "yum update -y",
    ]
  }
}
