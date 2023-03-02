output "id" {
  description = "The ID of the Cosmos DB Mongo Collection."
  value       = azurerm_cosmosdb_mongo_collection.this.id
}

output "system_indexes" {
  description = "One or more system_indexes blocks"
  value       = azurerm_cosmosdb_mongo_collection.this.system_indexes
}

output "name" {
  description = "collection name"
  value       = azurerm_cosmosdb_mongo_collection.this.name
}