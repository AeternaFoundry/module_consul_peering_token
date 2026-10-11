resource "consul_peering_token" "peering_tokens" {
  for_each = var.peering_tokens

  peer_name                 = each.value.peer_name
  meta                      = each.value.meta
  partition                 = each.value.partition
  server_external_addresses = each.value.server_external_addresses
}

