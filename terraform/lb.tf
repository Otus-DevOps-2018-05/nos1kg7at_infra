resource "google_compute_http_health_check" "health-check" {
  name               = "reddit-port-check"
  port               = "9292"
  check_interval_sec = 30
  timeout_sec        = 1
}

resource "google_compute_target_pool" "reddit-app-pool" {
  name = "reddit-app-pool"

  instances = [
    "${google_compute_instance.app.*.self_link}",
  ]

  health_checks = ["${google_compute_http_health_check.health-check.name}"]
}

resource "google_compute_forwarding_rule" "reddit-lb" {
  name       = "reddit-forwarding-rule"
  target     = "${google_compute_target_pool.reddit-app-pool.self_link}"
  port_range = "9292"
}
