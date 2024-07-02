module "create_gcs" {
  source       = "../modules/gcs"
  project_id   = var.project_name
  location     = var.region
  storage_type = "STANDARD"
}

module "create_kms" {
  source         = "../modules/kms"
  project_id     = var.project_name
  location       = var.region
  pubsub_keyring = var.kms_keychain_name
  pubsub_key     = var.kms_key_name
}

module "create_pubsub_topic" {
  source            = "../modules/pubsub"
  project_id        = var.project_name
  location          = var.region
  kms_keychain_name = var.kms_keychain_name
  kms_name          = var.kms_key_name
  topic_name        = "composer_input_topic"
  retention_time    = "86600s"
}

module "create-sa" {
  source          = "../modules/sa"
  for_each        = var.service_accounts
  project_id      = var.project_name
  display_name    = each.value.display_name
  account_id_name = each.value.name
}

module "create-dataproc" {
  source              = "../modules/dataproc"
  project_id          = var.project_name
  cluster_name        = "dataproc-test-composer"
  location            = var.region
  account_id          = var.service_accounts["dataproc_service_account"].name
  staging_bucket_name = "a5d7dd6899e4c0ee-bucket-tfstate"
}