# define variables

# variable "ecr_registry_replication_regions" {
#     type = string
#     default = "us-west-2"
# }

variable "ecr_replication_regions" {
    type = list(string)
    default = ["us-west-1", "us-west-2"]
}

