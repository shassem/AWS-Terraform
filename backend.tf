# Remote backend connected to S3 bucket
# DynamoDB to activate state locking

terraform {
  backend "s3" {
    bucket = "shereefbucket"
    key    = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "DynTest"
  }
}