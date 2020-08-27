# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

output "config" {
  value       = [merge({ for r in aws_appsync_resolver.default : r.id => { "id" = r.id, "arn" = r.arn } }, { for r in var.pipeline_resolver_config : r.field => { "id" = r.field, "arn" = r.arn } })]
  description = "A list of resolver ARNs"
}
