resource "google_kms_key_ring" "keyring" {
  name     = var.keyring_name
  project = var.project_id
  location = var.location
}

resource "google_kms_crypto_key" "example-key" {
  name            = var.key_name
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = false
  }
}
