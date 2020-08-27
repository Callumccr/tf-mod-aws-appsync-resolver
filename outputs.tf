# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

output "config" {
  value       = [merge({ for r in aws_appsync_resolver.default : r.field => { "field" = r.field, "arn" = r.arn } }, { for r in aws_appsync_resolver.pipeline : r.field => { "field" = r.field, "arn" = r.arn } })]
  description = "A list of resolver ARNs"
}
