resource "consul_key_prefix" "key_prefixes" {
  for_each = var.key_prefixes

  path_prefix = each.value.path_prefix
  datacenter  = each.value.datacenter
  namespace   = each.value.namespace
  partition   = each.value.partition
  subkeys     = each.value.subkeys
  token       = each.value.token

  dynamic "subkey" {
    for_each = each.value.subkey != null ? each.value.subkey : []
    content {
      flags = subkey.value.flags
      path  = subkey.value.path
      value = subkey.value.value
    }
  }
}

