

resource "google_dataproc_cluster" "mycluster" {
  name     = var.cluster_name
  region   = var.location
  project = var.project_id
  graceful_decommission_timeout = "120s"
  

  cluster_config {
    staging_bucket = var.staging_bucket_name

    master_config {
      num_instances = 1
      machine_type  = "e2-medium"
      disk_config {
        boot_disk_type    = "pd-ssd"
        boot_disk_size_gb = 30
      }
    }

    worker_config {
      num_instances    = 1
      machine_type     = "e2-medium"
      min_cpu_platform = "Intel Skylake"
      disk_config {
        boot_disk_size_gb = 30
        num_local_ssds    = 1
      }
    }

    software_config {
      image_version = "2.0.35-debian10"
      override_properties = {
        "dataproc:dataproc.allow.zero.workers" = "true"
      }
    }

    gce_cluster_config {

      service_account = data.google_service_account.object_viewer.email
      service_account_scopes = [
        "cloud-platform"
      ]
    }
  }
}