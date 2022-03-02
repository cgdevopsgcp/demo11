terraform {
  backend "gcs"{
    bucket      = "buckett1324"
    prefix      = "dev"
    credentials = "service.json"
  }
}
