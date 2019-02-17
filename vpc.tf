# CREATE VPC
resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support   = "${var.enable_dns_support}"

  tags {
    Name = "${var.vpc_name}"
    environment_name = "${var.environment_name}"
  }
}

# CREATE DEFAULT SECURITY GROUP
resource "aws_default_security_group" "default_security_group" {
  vpc_id = "${aws_vpc.vpc.id}"
}
