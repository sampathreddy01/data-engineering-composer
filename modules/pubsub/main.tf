resource "google_pubsub_topic" "example" {
  name         = var.topic_name
  project = var.project_id
  kms_key_name = data.google_kms_crypto_key.my_crypto_key.id
  message_retention_duration = var.retention_time
}


# resource "" "name" {
  
# }