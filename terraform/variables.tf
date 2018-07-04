variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-c"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  description = "Private key path for provisioners thru ssh"
}

variable disk_image {
  description = "Disk image"
}

variable count {
  description = "Number of instances"
  default     = 1
}
