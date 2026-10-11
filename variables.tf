variable "iam_project_access_policies" {
  description = <<EOT
Map of iam_project_access_policies, attributes below
Required:
    - access_policy_id
    - location
Optional:
    - annotations
    - deletion_policy
    - display_name
    - project
    - details (block):
        - rules (required, block):
            - conditions (optional, block):
                - expression (optional)
                - service (required)
            - description (optional)
            - effect (required)
            - excluded_principals (optional)
            - operation (required, block):
                - excluded_permissions (optional)
                - permissions (required)
            - principals (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    access_policy_id = string
    location         = string
    annotations      = optional(map(string))
    deletion_policy  = optional(string)
    display_name     = optional(string)
    project          = optional(string)
    details = optional(object({
      rules = list(object({
        conditions = optional(list(object({
          expression = optional(string)
          service    = string
        })))
        description         = optional(string)
        effect              = string
        excluded_principals = optional(list(string))
        operation = object({
          excluded_permissions = optional(list(string))
          permissions          = list(string)
        })
        principals = list(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iam_project_access_policies : (
        v.details == null || (length(v.details.rules) >= 1)
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

