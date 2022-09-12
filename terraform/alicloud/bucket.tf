resource "alicloud_oss_bucket" "bad_bucket" {
  # Public and writeable bucket 
  # Versioning isn't enabled
  # Not Encrypted with a Customer Master Key and no Server side encryption
  # Doesn't have access logging enabled" 
  bucket = "wildwestfreeforall"
  acl    = "public-read-write"
  tags = {
    git_commit           = "4b8a9ef12800b7b5922dffa619144dedf72d661d"
    git_file             = "terraform/alicloud/bucket.tf"
    git_last_modified_at = "2022-09-12 17:22:55"
    git_last_modified_by = "mroberts@m-c02ff1nqml85.paloaltonetworks.local"
    git_modifiers        = "mroberts"
    git_org              = "mroberts-panw"
    git_repo             = "terragoat2"
    yor_trace            = "80373049-248d-4f5e-9d25-740c3e80f2b9"
  }
}
