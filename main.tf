data "oci_core_drg_route_distributions" "core_drg_route_distributions_lookup" {
  for_each = var.core_drg_route_distributions_lookup

  drg_id       = each.value.drg_id
  display_name = each.value.display_name
  state        = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

