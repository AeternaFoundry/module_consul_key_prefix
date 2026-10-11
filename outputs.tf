output "key_prefixes_id" {
  description = "Map of id values across all key_prefixes, keyed the same as var.key_prefixes except keys with no id are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_prefixes_datacenter" {
  description = "Map of datacenter values across all key_prefixes, keyed the same as var.key_prefixes except keys with no datacenter are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "key_prefixes_namespace" {
  description = "Map of namespace values across all key_prefixes, keyed the same as var.key_prefixes except keys with no namespace are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "key_prefixes_partition" {
  description = "Map of partition values across all key_prefixes, keyed the same as var.key_prefixes except keys with no partition are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "key_prefixes_path_prefix" {
  description = "Map of path_prefix values across all key_prefixes, keyed the same as var.key_prefixes except keys with no path_prefix are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.path_prefix if v.path_prefix != null && length(v.path_prefix) > 0 }
}
output "key_prefixes_subkey" {
  description = "Map of subkey values across all key_prefixes, keyed the same as var.key_prefixes except keys with no subkey are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.subkey if v.subkey != null && length(v.subkey) > 0 }
}
output "key_prefixes_subkeys" {
  description = "Map of subkeys values across all key_prefixes, keyed the same as var.key_prefixes except keys with no subkeys are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.subkeys if v.subkeys != null && length(v.subkeys) > 0 }
}
output "key_prefixes_token" {
  description = "Map of token values across all key_prefixes, keyed the same as var.key_prefixes except keys with no token are omitted"
  value       = { for k, v in consul_key_prefix.key_prefixes : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

