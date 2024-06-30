data "google_kms_key_ring" "my_key_ring" {
  name     = var.kms_keychain_name
  location = var.location
}

data "google_kms_crypto_key" "my_crypto_key" {
  name     = var.kms_name
  key_ring = data.google_kms_key_ring.my_key_ring.id
}