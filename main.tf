cess_key" {}
variable "secret_key" {}
variable "region" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_vpc" "myvpc" {
  cidr_block           = "10.0.0.0/16"

  tags {
    Name = "terravpc"
  }
}
