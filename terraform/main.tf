provider "google" {
  version = "1.4.0"
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_compute_instance" "app" {
  name  = "reddit-app${count.index}"
  tags  = ["reddit-app"]
  zone  = "${var.zone}"
  count = "${var.count}"

  metadata {
    ssh-keys = "noskov:${file(var.public_key_path)} appuser1:${file(var.public_key_path)} appuser2:${file(var.public_key_path)}"
  }

  #added private key
  connection {
    type        = "ssh"
    user        = "noskov"
    agent       = false
    private_key = "${file(var.private_key_path)}"
  }

  #added provisioner
  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  #added remote exec
  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }

  machine_type = "g1-small"

  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }

  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "default"

    # использовать ephemeral IP для доступа из Интернет
    access_config {}
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name = "allow-puma-default"

  # Название сети, в которой действует правило
  network = "default"

  # Какой доступ разрешить
  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  # Каким адресам разрешаем доступ
  source_ranges = ["0.0.0.0/0"]

  # Правило применимо для инстансов с тегом …
  target_tags = ["reddit-app"]
}
