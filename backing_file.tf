# This file has some scaffolding to make sure that names are unique and that
# a region and zone are selected when you try to create your Terraform resources.

locals {
  name_suffix = "${random_pet.suffix.id}"
}

resource "random_pet" "suffix" {
  length = 2
}

provider "google" {
  region = "australia-southeast1"
  zone   = "australia-southeast1-a"
}
