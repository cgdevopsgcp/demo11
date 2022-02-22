terraform {
  backend "gcs"{
    bucket      = "buckett132"
    prefix      = "dev"
    credentials = "service.json"
  }
}
