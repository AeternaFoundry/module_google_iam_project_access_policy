output "iam_project_access_policies_id" {
  description = "Map of id values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no id are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_project_access_policies_access_policy_id" {
  description = "Map of access_policy_id values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no access_policy_id are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.access_policy_id if v.access_policy_id != null && length(v.access_policy_id) > 0 }
}
output "iam_project_access_policies_annotations" {
  description = "Map of annotations values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no annotations are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "iam_project_access_policies_create_time" {
  description = "Map of create_time values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no create_time are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "iam_project_access_policies_deletion_policy" {
  description = "Map of deletion_policy values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "iam_project_access_policies_details" {
  description = "Map of details values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no details are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => one(v.details) if v.details != null && length(v.details) > 0 }
}
output "iam_project_access_policies_display_name" {
  description = "Map of display_name values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no display_name are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iam_project_access_policies_effective_annotations" {
  description = "Map of effective_annotations values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no effective_annotations are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "iam_project_access_policies_etag" {
  description = "Map of etag values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no etag are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "iam_project_access_policies_location" {
  description = "Map of location values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no location are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.location if v.location != null && length(v.location) > 0 }
}
output "iam_project_access_policies_name" {
  description = "Map of name values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no name are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_project_access_policies_project" {
  description = "Map of project values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no project are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.project if v.project != null && length(v.project) > 0 }
}
output "iam_project_access_policies_uid" {
  description = "Map of uid values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no uid are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "iam_project_access_policies_update_time" {
  description = "Map of update_time values across all iam_project_access_policies, keyed the same as var.iam_project_access_policies except keys with no update_time are omitted"
  value       = { for k, v in google_iam_project_access_policy.iam_project_access_policies : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

