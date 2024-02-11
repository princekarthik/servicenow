resource "google_compute_security_policy" "policy" {
  name = var.name
  project = var.project_id

  dynamic "rule" {
    for_each = var.default_rules
    content {
      action = rule.value.action
      priority = rule.value.priority
      match {
        versioned_expr = rule.value.versioned_expr
        config {
          src_ip_ranges = rule.value.src_ip_ranges
        }
      }
      description = rule.value.description
    }
  }
  dynamic "rule" {
    for_each = var.cel_rules
    content {
      action = rule.value.action
      priority = rule.value.priority
    match {
      expr {
        expression = rule.value.expression
      }
    }
      description = rule.value.description
    }
  }  
}

# resource to create IAM member to access vpn
resource "google_project_iam_member" "armor_iam" {
  count = length(var.members)
  project = var.project_id
  role    = "roles/vpcaccess.admin"
  member  = var.members[count.index]
}