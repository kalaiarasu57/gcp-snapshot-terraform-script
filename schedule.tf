resource "google_compute_resource_policy" "snapshot scheduler" {
  name   = "policy"
  region = "us-central1"
  snapshot_schedule_policy {
    schedule {
      daily_schedule {
        days_in_cycle = 2
        start_time    = "04:00"
  }
}
retention_policy {
max_retention_days = 15
on_source_disk_delete = “KEEP_AUTO_SNAPSHOTS”
}
snapshot_properties {
/labels = {
my_label = “value-testsnapshot”
}/

  storage_locations = ["australia southeast1"]
  guest_flush       = false

    }
  }
}
