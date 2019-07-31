provider "aws" {
  version = "2.19"
}

locals {
  unique_name = "${var.name}-${var.id}"
  filter_name = "RHEL-*8*_HVM*"
}

