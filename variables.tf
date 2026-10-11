variable "database_management_cloud_databases_lookup" {
  description = <<EOT
Map of database_management_cloud_databases_lookup, attributes below
Required:
    - cloud_db_system_id
Optional:
    - compartment_id
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cloud_db_system_id = string
    compartment_id     = optional(string)
    display_name       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

