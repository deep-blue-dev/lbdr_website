require "refile/s3"

aws = {
  access_key_id: "AWS_ACCESS_KEY_ID",
  secret_access_key: "AWS_SECRET_KEY",
  region: "us-east-1",
  bucket: "AWS_BUCKET_NAME",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
