config = {
subscription_id      = "dede9626-4a0a-4c08-954d-62f462d4af72"
resource_group_name  = "rg_storagetfstate"
storage_account_name = "stgprosegur"
container_name       = "tfstate1"
key                  = "${path_relative_to_include()}/terraform.tfstate"
}