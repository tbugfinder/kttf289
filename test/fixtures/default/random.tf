provider "random" {}

resource "random_id" "id" {
  byte_length = 4
}

resource "random_id" "id2" {
  byte_length = 4000
  #breakit = "hello_it_want_to_break_it"
}

locals {
  id = "${random_id.id.hex}"
  id2 = "${random_id.id2.hex}"
}
