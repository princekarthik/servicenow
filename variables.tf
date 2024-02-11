variable "name" {
  description = "The name of the Cloud Armor Policy"
  type        = string
}

variable "project_id" {
  description = "The project ID of the project"
  type        = string
}

variable "default_rules" {
  description = "default rule"
  type = list(object({
      action   = string
      priority = string
      versioned_expr = string
      src_ip_ranges = list(string)
      description = string
  }))
}

variable "cel_rules" {
  description = "rule configured with common expression language(CEL)"
   type = list(object({
      action   = string
      priority = string
      expression = string
      description = string
  }))
}

variable "members"{
    type=list
    description = "Identities that will be granted the privilege in role"
}