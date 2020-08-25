# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

output "resolver_config" {
  value       = [{ for r in var.resolver_config : r.id => r... }, { for r in var.pipeline_resolver_config : r.field => r... }]
  description = "A list of resolver ARNs"
}

output "resolver_arn" {
  value       = [for r in aws_appsync_resolver.default : r.arn]
  description = "A list of pipeline resolver ARNs"
}

output "pipeline_resolver_arn" {
  value       = [for r in aws_appsync_resolver.pipeline : r.arn]
  description = "A list of pipeline resolver ARNs"
}


