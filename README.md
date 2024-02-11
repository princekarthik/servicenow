# Cloud Armor Module

This module allows you to create Cloud Armor security Policy

## Features :
1. Cloud Armor provides robust DDoS protection to your applications and services by leveraging Google's global network infrastructure and security technologies.
2. You can create default security rules using Cloud Armor's rule language to define default policies for your applications and services..
3. Cloud Armor allows you to restrict access to your applications and services based on geographic regions.

## Compatibility
This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+.


## Resources

| Name | Type |
|------|------|
| [google_cloud_armor_policy.cloud_armor](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy) | resource |

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inputs

| Name | Description | Type | Default | Required | 
|------|-------------|------|---------| ---------|
| project\_id | The ID of the project in which the resource belongs.| `string` | n/a | yes |
| name | The name of the Cloud Armor Policy.| `string` | n/a | yes |
| default\_rules | default rule. | <pre>list(object({<br> action        = string,<br> priority      = string,<br>versioned_expr = string,<br>src_ip_ranges =  list(string),<br>description   = string})) | "deny()" | yes |
| cel\_rules | rule configured with common expression language(CEL). | <pre>list(object({<br>action     = string,<br>priority   = string,<br>expression = string,<br>description = string}))` | "allow" | yes |
| members | Identities that will be granted the privilege in role. | `list` | `[]` | yes |


## Outputs

| Name | Description |
|------|-------------|
| id | an identifier for the resource with format |

## Enable APIs

* Cloud Armor API

## References
* Official Terraform Registry for cloud-armor-policy - https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy
* Google Cloud Documentation for cloud-armor-policy - https://cloud.google.com/armor/docs/cloud-armor-overview#security_policies
   