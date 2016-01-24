require "refile/s3"

aws = {
  access_key_id: "AWSAccessKeyId",
  secret_access_key: "AWSSecretKey",
  region: "sa-east-1",
  bucket: "AWSBucket",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
