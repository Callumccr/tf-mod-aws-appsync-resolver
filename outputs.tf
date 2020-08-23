# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

output "resolver_config" {
  value       = { for r in var.resolver_config : r.id => r... }
  description = "A list of resolver ARNs"
}

output "resolver_arn" {
  value       = [for r in aws_appsync_resolver.default : r.arn]
  description = "A list of pipeline resolver ARNs"
}



