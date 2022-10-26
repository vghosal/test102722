provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_iam_user" "iamuer" {

  for_each = toset(["user1", "user2", "user3"])
  name     = each.key
}