variable "core_drg_route_distributions_lookup" {
  description = <<EOT
Map of core_drg_route_distributions_lookup, attributes below
Required:
    - drg_id
Optional:
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    drg_id       = string
    display_name = optional(string)
    state        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

