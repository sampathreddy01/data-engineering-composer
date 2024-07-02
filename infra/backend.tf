terraform {
  backend "gcs" {
    bucket = "f51d44ed1194090c-bucket-tfstate"
    prefix = "terraform/state"
  }
}