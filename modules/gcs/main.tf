resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  project = var.project_id
  force_destroy = false
  location      = var.location
  storage_class = var.storage_type
  versioning {
    enabled = true
  }
}