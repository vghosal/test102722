provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = "AKIATMI2CI3RVMRHS7HP"
  secret_key = "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"

}

resource "aws_iam_user" "iamuer" {

  for_each = toset(["user1","user2","user3"])
  name=each.key
}