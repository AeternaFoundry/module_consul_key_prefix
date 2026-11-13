output "key_prefixes_id" {
  description = "Map of id values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.id }
}
output "key_prefixes_datacenter" {
  description = "Map of datacenter values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.datacenter }
}
output "key_prefixes_namespace" {
  description = "Map of namespace values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.namespace }
}
output "key_prefixes_partition" {
  description = "Map of partition values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.partition }
}
output "key_prefixes_path_prefix" {
  description = "Map of path_prefix values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.path_prefix }
}
output "key_prefixes_subkey" {
  description = "Map of subkey values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.subkey }
}
output "key_prefixes_subkeys" {
  description = "Map of subkeys values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.subkeys }
}
output "key_prefixes_token" {
  description = "Map of token values across all key_prefixes, keyed the same as var.key_prefixes"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.token }
  sensitive   = true
}

