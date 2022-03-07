terraform {
  backend "gcs"{
    bucket      = "buckett1122"
    prefix      = "dev"
    credentials = "service.json"
  }
}
