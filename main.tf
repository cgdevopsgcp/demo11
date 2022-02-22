variable "region" {
default = "us-central1-a" 
}
provider "google" {
credentials = "${file("service.json")}"
project = "cg-anz-practice"
region = "${var.region}"
}
resource "google_compute_instance" "alphaa" {
count = 1 // Adjust as desired
name = "alpha1${count.index + 1}" // yields "test1", "test2", etc. It's also
machine_type = "f1-micro" // smallest (CPU & RAM) available instance
zone = "${var.region}" // yields "europe-west1-d" as setup previously.
boot_disk {
initialize_params {
image = "debian-7-wheezy-v20160301" 
}
}
network_interface {
network = "default"
access_config {
}
}
}

resource "google_storage_bucket" "auto-expire" {
name = "buckett132"
location = "US"
force_destroy = true
lifecycle_rule {
condition {
age = 3
}
action {
type = "Delete"
}
}
}

resource "google_compute_network" "vpc_network" {
//  project                 = "cg-anz-practice" # Replace this with your project ID in quotes
  name                    = "my-auto-mode-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}

resource "google_compute_instance" "test12" {
count = 1 // Adjust as desired
name = "test12${count.index + 1}" // yields "test1", "test2", etc. It's also
machine_type = "f1-micro" // smallest (CPU & RAM) available instance
zone = "${var.region}" // yields "europe-west1-d" as setup previously.
boot_disk {
initialize_params {
image = "debian-7-wheezy-v20160301" 
}
}
network_interface {
network = "default"
access_config {
}
}
}

