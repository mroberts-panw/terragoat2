resource "azurerm_resource_group" "example" {
  name     = "terragoat-${var.environment}"
  location = var.location
  tags = {
    git_commit           = "4b8a9ef12800b7b5922dffa619144dedf72d661d"
    git_file             = "terraform/azure/resource_group.tf"
    git_last_modified_at = "2022-09-12 17:22:55"
    git_last_modified_by = "mroberts@m-c02ff1nqml85.paloaltonetworks.local"
    git_modifiers        = "mroberts"
    git_org              = "mroberts-panw"
    git_repo             = "terragoat2"
    yor_trace            = "80b3b0ca-e0d8-4266-8a1f-12c71afd7e18"
  }
}