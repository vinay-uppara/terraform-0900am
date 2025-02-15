terraform {
  backend "s3" {
    bucket = "veeranareshitdevops"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}