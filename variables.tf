variable "repository_id" {
    type                                    = string
}

variable "pattern" {
    type                                    = string
    default                                 = "main"
}

variable "enforce_admins" {
  type                                      = bool
  default                                   = true
}
variable "require_signed_commits" {
  type                                      = string
  default                                   = false
}


variable "required_status_checks" {
    type = object(
        {
            strict                          = bool
            contexts                        = list(string)
        }
    )
    default = {
            contexts                        = []
            strict                          = false
    }
  
}

variable "required_pull_request_reviews" {
    type = object(
        {
            dismiss_stale_reviews           = bool
            restrict_dismissals             = bool
            dismissal_restrictions          = list(string)
            pull_request_bypassers          = list(string)
            require_code_owner_reviews      = bool
            required_approving_review_count = number
        }
    )
    default = {
            dismiss_stale_reviews           = false
            dismissal_restrictions          = []
            pull_request_bypassers          = []
            require_code_owner_reviews      = false
            required_approving_review_count = 1
            restrict_dismissals             = false
    }
}

variable "allows_deletions" {
    type                                    = bool
    default                                 = false
}

variable "allows_force_pushes" {
    type                                    = bool
    default                                 = false  
}

variable "push_restrictions" {
    type                                    = list(string)
    default                                 = []
}