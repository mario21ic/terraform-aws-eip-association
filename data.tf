data "aws_eip" "eip" {
  public_ip = "${var.eip}"
}