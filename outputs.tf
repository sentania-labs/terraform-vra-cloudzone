output "cloud_zone" {
  description = "The cloud zone name, ID, and external region ID"
  value = {
    "name"               = vra_zone.this.name,
    "id"                 = vra_zone.this.id,
    "external_region_id" = vra_zone.this.external_region_id
  }
}

