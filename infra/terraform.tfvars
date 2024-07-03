project_name = "kinetic-bot-424603-i5"

region = "us-central1"

kms_keychain_name = "test_kms_keychain_pubsub"

kms_key_name = "test_kms_key_pubsub"

service_accounts = {
  composer_service_account = {
    name         = "composer-serice-account"
    display_name = "Service account for Cloud Composer"
  }
  dataproc_service_account = {
    name         = "dataproc-service-account"
    display_name = "Service Account for Dataproc"
  }
}

iam_roles = {
  dataproc-service-account = ["roles/dataproc.worker"]
  composer-serice-account  = ["roles/composer.worker", "roles/composer.viewer"]
}