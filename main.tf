
module "dabbi_ecr_registry_replicaiton" {
    source = "./registry_replication"

    account_id =  data.aws_caller_identity.current.account_id
    replication_regions = var.ecr_replication_regions
}