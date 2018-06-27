variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}

variable public_key_path {
  description = "Path to the public key use for ssh access"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}
