resource "google_kms_key_ring" "keyring" {
  name     = var.pubsub_keyring
  project = var.project_id
  location = var.location
}

resource "google_kms_crypto_key" "example-key" {
  name            = var.pubsub_key
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "7776000s"

  lifecycle {
    prevent_destroy = false
  }
}

# resource "google_kms_crypto_key_iam_member" "kms_key_decrypt" {
#   crypto_key_id = google_kms_crypto_key.example-key.id
#   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
#   member        = "serviceAccount:service-665450317163@gcp-sa-pubsub.iam.gserviceaccount.com"
# }