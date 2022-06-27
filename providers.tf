terraform {
  backend "s3" {
    bucket         = "sreinf-tfstate-bucket-01"
    region         = "us-east-2"
    role_arn       = "arn:aws:iam::959946720450:role/sre-inf_cross_account"
    encrypt        = true
    dynamodb_table = "tf_lock_table"
  }
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63.0"
    }
  }
}
