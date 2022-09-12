resource "alicloud_db_instance" "seeme" {
  # Is public due to Security IPS 0.0.0.0/0
  engine           = "MySQL"
  engine_version   = "5.6"
  instance_type    = "rds.mysql.t1.small"
  instance_storage = "10"
  tde_status       = "Enabled"
  security_ips = [
    "0.0.0.0",
    "10.23.12.24/24"
  ]
  parameters {
    name  = "innodb_large_prefix"
    value = "ON"
  }
  parameters {
    name  = "connect_timeout"
    value = "50"
  }
  tags = {
    git_commit           = "4b8a9ef12800b7b5922dffa619144dedf72d661d"
    git_file             = "terraform/alicloud/rds.tf"
    git_last_modified_at = "2022-09-12 17:22:55"
    git_last_modified_by = "mroberts@m-c02ff1nqml85.paloaltonetworks.local"
    git_modifiers        = "mroberts"
    git_org              = "mroberts-panw"
    git_repo             = "terragoat2"
    yor_trace            = "7bd1394e-0a79-4288-8f83-5abcca5bf1ba"
  }
}
