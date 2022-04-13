locals {
  common_labels = merge(var.labels, {
    # Only lowercase keys allowed
    "project"     = var.namespace
    "environment" = var.stage
    "updated"     = time_static.update.rfc3339
  })
}

# Get the current time for the label "updated"
resource "time_static" "update" {}
