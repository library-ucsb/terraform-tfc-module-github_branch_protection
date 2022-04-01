resource "github_branch_protection" "branch" {
  repository_id                       = var.repository_id
  pattern                             = var.pattern
  enforce_admins                      = var.enforce_admins
  allows_deletions                    = var.allows_deletions
  push_restrictions                   = var.push_restrictions
  allows_force_pushes                 = var.allows_force_pushes

  required_status_checks {
    strict                            = var.required_status_checks.strict
    contexts                          = var.required_status_checks.contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews             = var.required_pull_request_reviews.dismiss_stale_reviews
    restrict_dismissals               = var.required_pull_request_reviews.restrict_dismissals
    dismissal_restrictions            = var.required_pull_request_reviews.dismissal_restrictions
    pull_request_bypassers            = var.required_pull_request_reviews.pull_request_bypassers
    require_code_owner_reviews        = var.required_pull_request_reviews.require_code_owner_reviews
    required_approving_review_count   = var.required_pull_request_reviews.required_approving_review_count
  }
}