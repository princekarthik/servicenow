module "cloud_armor" {
  source = "../"
  name = var.name
  project_id = var.project_id
  default_rules = var.default_rules
  cel_rules = var.cel_rules
  members=var.members
}