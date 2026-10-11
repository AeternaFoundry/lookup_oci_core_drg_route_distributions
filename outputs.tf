output "core_drg_route_distributions_lookup_id" {
  description = "Map of id values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_route_distributions_lookup_display_name" {
  description = "Map of display_name values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_drg_route_distributions_lookup_drg_id" {
  description = "Map of drg_id values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no drg_id are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.drg_id if v.drg_id != null && length(v.drg_id) > 0 }
}
output "core_drg_route_distributions_lookup_drg_route_distributions" {
  description = "Map of drg_route_distributions values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no drg_route_distributions are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.drg_route_distributions if v.drg_route_distributions != null && length(v.drg_route_distributions) > 0 }
}
output "core_drg_route_distributions_lookup_filter" {
  description = "Map of filter values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_drg_route_distributions_lookup_state" {
  description = "Map of state values across all core_drg_route_distributions_lookup, keyed the same as var.core_drg_route_distributions_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_core_drg_route_distributions.core_drg_route_distributions_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

