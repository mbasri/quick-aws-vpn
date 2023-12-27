#---------------------------------------------------------------------------------------------------
# KMS
#---------------------------------------------------------------------------------------------------
module "kms" {
  source = "git::https://gitlab.com/mbasri-terraform/modules/aws/terraform-aws-kms?ref=v1.0.4"

  kms_name                = local.kms_name
  description             = local.description
  enable_cloudwatch_logs  = true
  deletion_window_in_days = 7

  tags = local.tags
}
