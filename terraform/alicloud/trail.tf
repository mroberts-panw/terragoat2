resource "alicloud_actiontrail_trail" "fail" {
  # Action Trail not Logging for all regions
  # Action Trail not Logging for all events
  trail_name         = "action-trail"
  oss_write_role_arn = alicloud_ram_role.trail.arn
  oss_bucket_name    = alicloud_oss_bucket.trail.bucket
  event_rw           = "Read"
  trail_region       = "cn-hangzhou"
}

resource "alicloud_oss_bucket" "trail" {

  tags = {
    git_commit           = "4b8a9ef12800b7b5922dffa619144dedf72d661d"
    git_file             = "terraform/alicloud/trail.tf"
    git_last_modified_at = "2022-09-12 17:22:55"
    git_last_modified_by = "mroberts@m-c02ff1nqml85.paloaltonetworks.local"
    git_modifiers        = "mroberts"
    git_org              = "mroberts-panw"
    git_repo             = "terragoat2"
    yor_trace            = "9ce7077b-8195-4e71-aec6-ed1f769555dc"
  }
}

resource "alicloud_ram_role" "trail" {
  name     = "trail"
  document = <<EOF
  {
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Effect": "Allow",
        "Principal": {
          "Service": [
            "actiontrail.aliyuncs.com"
          ]
        }
      }
    ],
    "Version": "1"
  }
  EOF
  force    = true
}