output "ram_sharing_with_organizations_id" {
  description = "Map of id values across all ram_sharing_with_organizations, keyed the same as var.ram_sharing_with_organizations"
  value       = { for k, v in aws_ram_sharing_with_organization.ram_sharing_with_organizations : k => v.id if v.id != null && length(v.id) > 0 }
}

