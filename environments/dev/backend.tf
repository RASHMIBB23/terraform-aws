terraform {
  backend "s3" {
    bucket         = "rashmi-tfstate01"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
