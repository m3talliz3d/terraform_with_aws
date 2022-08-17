
terraform {
# Configure S3 bucket to be used for remote tfsatate
    backend "s3" {
        bucket = "metallized-terrraform-state"
        key    = "terraform_with_aws/terraform.tfstate"
        region = "us-west-2"
  }
}

