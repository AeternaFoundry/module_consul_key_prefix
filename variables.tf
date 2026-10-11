variable "key_prefixes" {
  description = <<EOT
Map of key_prefixes, attributes below
Required:
    - path_prefix
Optional:
    - datacenter
    - namespace
    - partition
    - subkeys
    - token
    - subkey (block):
        - flags (optional)
        - path (required)
        - value (required)
EOT

  type = map(object({
    path_prefix = string
    datacenter  = optional(string)
    namespace   = optional(string)
    partition   = optional(string)
    subkeys     = optional(map(string))
    token       = optional(string)
    subkey = optional(list(object({
      flags = optional(number)
      path  = string
      value = string
    })))
  }))
}

