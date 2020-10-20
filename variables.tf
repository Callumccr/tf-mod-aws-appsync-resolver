# -----------------------------------------------------------------------------
# Variables: Common AWS Provider - Autoloaded from Terragrunt
# -----------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region (e.g. ap-southeast-2). Autoloaded from region.tfvars."
  type        = string
  default     = ""
}

variable "aws_account_id" {
  description = "The AWS account id of the provider being deployed to (e.g. 12345678). Autoloaded from account.tfvars"
  type        = string
  default     = ""
}

variable "aws_assume_role_arn" {
  description = "(Optional) - ARN of the IAM role when optionally connecting to AWS via assumed role. Autoloaded from account.tfvars."
  type        = string
  default     = ""
}

# -----------------------------------------------------------------------------
# Variables: TF-MOD-AWS-APPSYNC-RESOLVER
# -----------------------------------------------------------------------------

variable "resolver_config" {
  description = "(Optional) - A list of maps that contain configuration for appsync resolvers to iteration over"
  type = list(object({
    id                = string
    type              = string
    field             = string
    data_source       = string
    request_template  = string
    response_template = string
  }))
}

variable "pipeline_resolver_config" {
  description = "(Optional) - A list of maps that contain configuration for appsync pipeline resolvers to iteration over"
  type = list(object({
    kind              = string
    type              = string
    field             = string
    pipeline_config   = map(list(string))
    request_template  = string
    response_template = string
  }))
}

variable "api_id" {
  description = "(Required) - The API ID for the GraphQL API."
  type        = string
}
