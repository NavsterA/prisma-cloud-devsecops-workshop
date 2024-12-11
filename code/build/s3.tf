provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev__s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev__s3"
    yor_trace            = "4cd39a00-0f32-4521-af45-2397b4520d6e"
    git_commit           = "de6e31f791ece98e4ebb57b0384f5948c82d9f07"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:45:31"
    git_last_modified_by = "89528001+NavsterA@users.noreply.github.com"
    git_modifiers        = "89528001+NavsterA"
    git_org              = "NavsterA"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
