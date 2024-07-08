resource "google_bigquery_dataset" "dataset" {
  dataset_id = "my_dataset"
  project = var.project_id
  location   = var.location
}


resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "created_users"

  schema = <<EOF
[
  {
    "name": "id",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "first_name",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "last_name",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "gender",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "address",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "post_code",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "email",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "username",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "registered_date",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "phone",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "picture",
    "type": "STRING",
    "mode": "REQUIRED"
  }
]
EOF
}
