provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "35b4ae1b-3745-4851-b1c4-b98c65145639"
    git_commit           = "9bc49c3511df549e00d4d76dc94a948f4e3842f4"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:35:00"
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
