variable "name" {
  description = "Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
}

variable "account_name" {
  description = "The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
}

variable "database_name" {
  description = "The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created."
  type        = string
}
variable "shard_key" {
  description = "The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created."
  type        = string
}

variable "analytical_storage_ttl" {
  description = "The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to -1, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number n – items will expire n seconds after their last modified time."
  type        = number
  default     = null
}

variable "default_ttl_seconds" {
  description = "The default Time To Live in seconds. If the value is -1, items are not automatically expired."
  type        = number
  default     = null
}

variable "keys" {
  description = "Specifies the list of user settable keys for each Cosmos DB Mongo Collection."
  type        = list(string)
  default     = [_ids]
}

variable "unique" {
  description = "Is the index unique or not? Defaults to false"
  type        = bool
  default     = false
}

variable "throughput" {
  description = "The throughput of the MongoDB collection (RU/s). Must be set in increments of 100. The minimum value is 400. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  type        = number
  default     = null
}

variable "max_autoscaling_throughput" {
  description = "The maximum throughput of the MongoDB collection (RU/s). Must be between 1,000 and 1,000,000. Must be set in increments of 1,000. Conflicts with throughput."
  type        = number
  default     = null
}