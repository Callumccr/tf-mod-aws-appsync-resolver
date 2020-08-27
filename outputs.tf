# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

output "resolver_arns" {
  value       = concat([for f in aws_appsync_function.default : f.arn], [for f in aws_appsync_function.pipeline : f.arn])
  description = "A list of resolver ARNs"
}
