terraform {
  backend "gcs"{
    bucket      = "bucketbucket273"
    prefix      = "dev"
    credentials = "service.json"
  }
}
