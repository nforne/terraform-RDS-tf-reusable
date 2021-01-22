terraform {
  backend "s3" {
    bucket = "tf-s3-x"
    key    = "A-rds-tf/tfstate"
    region = "us-east-1"
    dynamodb_table = "tf-s3-x"
  }
}