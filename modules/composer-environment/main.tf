resource "google_composer_environment" "test_composer" {
  name   = var.composer_name
  project = var.project_id
  region = var.location
  config {
    node_count = 2

    node_config {
      zone         = "us-central1-a"
      machine_type = var.machine_type

      service_account = data.google_service_account.composer_sa
    }

    web_server_config {
      machine_type = "composer-n1-webserver-2"
    }

    # storage_config {
    #     bucket = var.composer_bucket
    # }
  }
}