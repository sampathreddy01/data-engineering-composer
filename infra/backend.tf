terraform {
  backend "gcs" {
    bucket = "a7d501d94e1e1891-bucket-tfstate"
    prefix = "terraform/state"
  }
}