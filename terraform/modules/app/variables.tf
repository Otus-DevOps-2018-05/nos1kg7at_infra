variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Region"
  default     = "europe-west1-c"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}

variable "count" {
  description = "Number of instance"
  default     = 1
}

variable environment_name {
}

variable app_port {
  default    = 9292  
}

variable app_provision_enabled {
  default    = 1
}

variable http_port {
  default   = 80
}

variable db_address {
  default = "0.0.0.0"
}
