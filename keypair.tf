resource "openstack_compute_keypair_v2" "je" {
  name       = "JE"
  public_key = "ssh-rsa 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"
}
