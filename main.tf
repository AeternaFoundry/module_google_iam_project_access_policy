resource "google_iam_project_access_policy" "iam_project_access_policies" {
  for_each = var.iam_project_access_policies

  access_policy_id = each.value.access_policy_id
  location         = each.value.location
  annotations      = each.value.annotations
  deletion_policy  = each.value.deletion_policy
  display_name     = each.value.display_name
  project          = each.value.project

  dynamic "details" {
    for_each = each.value.details != null ? [each.value.details] : []
    content {
      dynamic "rules" {
        for_each = details.value.rules
        content {
          dynamic "conditions" {
            for_each = rules.value.conditions != null ? rules.value.conditions : []
            content {
              expression = conditions.value.expression
              service    = conditions.value.service
            }
          }
          description         = rules.value.description
          effect              = rules.value.effect
          excluded_principals = rules.value.excluded_principals
          operation {
            excluded_permissions = rules.value.operation.excluded_permissions
            permissions          = rules.value.operation.permissions
          }
          principals = rules.value.principals
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

