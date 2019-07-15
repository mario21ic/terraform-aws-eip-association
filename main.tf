provider "aws" {
  region = "${var.region}"
}

resource "aws_eip_association" "eip_assoc_ec2" {
  count           = "${var.associate_by == "ec2" ? 1 : 0}"
  instance_id     = "${var.ec2_id}"
  allocation_id   = "${data.aws_eip.eip.id}"
}

resource "aws_eip_association" "eip_assoc_eni" {
  count                 = "${var.associate_by == "eni" ? 1 : 0}"
  network_interface_id  = "${var.eni_id}"
  allocation_id         = "${data.aws_eip.eip.id}"
}