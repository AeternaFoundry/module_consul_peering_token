variable "peering_tokens" {
  description = <<EOT
Map of peering_tokens, attributes below
Required:
    - peer_name
Optional:
    - meta
    - partition
    - server_external_addresses
EOT

  type = map(object({
    peer_name                 = string
    meta                      = optional(map(string))
    partition                 = optional(string)
    server_external_addresses = optional(list(string))
  }))
}

