
resource "aws_ecr_replication_configuration" "rc" {
    replication_configuration {
        rule {
            dynamic "destination" {
                for_each = toset(var.replication_regions)
                content {
                    region = destination.key
                    registry_id = var.account_id
                }
            }
        }
    }

    
}

#TODO: will add registry permissions when needed
# resource "aws_ecr_registry_policy" "registry_policy" {
#
# }