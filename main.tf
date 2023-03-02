resource "azurerm_cosmosdb_mongo_collection" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name
  account_name        = var.account_name
  database_name       = var.database_name

  default_ttl_seconds = var.default_ttl_seconds
  shard_key           = var.shard_key
  throughput          = var.throughput

  analytical_storage_ttl = var.analytical_storage_ttl

  index {
    index = var.index
  }

  autoscale_settings {
    max_throughput = var.max_autoscaling_throughput
  }

}