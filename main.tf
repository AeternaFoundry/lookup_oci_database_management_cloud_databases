data "oci_database_management_cloud_databases" "database_management_cloud_databases_lookup" {
  for_each = var.database_management_cloud_databases_lookup

  cloud_db_system_id = each.value.cloud_db_system_id
  compartment_id     = each.value.compartment_id
  display_name       = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

