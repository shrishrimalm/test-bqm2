########################################
# Cloud Trigger Code
########################################

resource "google_cloudbuild_trigger" "bqm2-trigger" {
  location = "us-central1"

  trigger_template {
    branch_name = "main"
    repo_name   = "test-bqm2"
  }

  filename = "cloudbuild.yaml"
}
