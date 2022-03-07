variable "region" {
default = "us-central1-a" 
}
provider "google" {
credentials = "${file("service.json")}"
project = "dev-adapter-3388081"
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
name = "buckett135"
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
//  project                 = "dev-adapter-338808" # Replace this with your project ID in quotes
  name                    = "my-auto-node-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}



