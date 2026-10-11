output "peering_tokens_id" {
  description = "Map of id values across all peering_tokens, keyed the same as var.peering_tokens except keys with no id are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "peering_tokens_meta" {
  description = "Map of meta values across all peering_tokens, keyed the same as var.peering_tokens except keys with no meta are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "peering_tokens_partition" {
  description = "Map of partition values across all peering_tokens, keyed the same as var.peering_tokens except keys with no partition are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "peering_tokens_peer_name" {
  description = "Map of peer_name values across all peering_tokens, keyed the same as var.peering_tokens except keys with no peer_name are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.peer_name if v.peer_name != null && length(v.peer_name) > 0 }
}
output "peering_tokens_peering_token" {
  description = "Map of peering_token values across all peering_tokens, keyed the same as var.peering_tokens except keys with no peering_token are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.peering_token if v.peering_token != null && length(v.peering_token) > 0 }
  sensitive   = true
}
output "peering_tokens_server_external_addresses" {
  description = "Map of server_external_addresses values across all peering_tokens, keyed the same as var.peering_tokens except keys with no server_external_addresses are omitted"
  value       = { for k, v in consul_peering_token.peering_tokens : k => v.server_external_addresses if v.server_external_addresses != null && length(v.server_external_addresses) > 0 }
}

