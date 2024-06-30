resource "google_service_account" "service_account" {
  account_id   = var.account_id_name
  display_name = var.display_name
  project = var.project_id
}

# resource "google_service_account" "service_account" {
#   account_id   = var.account_id_name
#   display_name = var.display_name
#   project = var.project_id
# }