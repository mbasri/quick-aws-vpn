#---------------------------------------------------------------------------------------------------
# locals variables
#---------------------------------------------------------------------------------------------------
locals {
  name   = "quick-aws-vpn"
  region = "eu-west-3"

  description = "Quick AWS VPN"

  kms_name                  = local.name
  vpc_name                  = local.name
  security_group_name       = local.name
  iam_instance_profile_name = local.name
  instance_name             = local.name
  ssm_parameter_name        = local.name

  tags = {
    "Name"        = local.name,
    "Description" = "Quick AWS VPN",

    "billing:organisation"      = "mbasri",
    "billing:organisation-unit" = "labs",
    "billing:application"       = "quick-aws-vpn",
    "billing:environment"       = "dev",

    "security:compliance"     = "HIPAA",
    "security:data-sensitity" = "1",
    "security:encryption"     = "true",

    "technical:terraform"                     = "true",
    "technical:terraform:scm"                 = "https://gitlab.com/mbasri/quick-aws-vpn.git",
    "technical:terraform:required-version"    = "1.6.3",
    "technical:provider:aws:required-version" = "5.25.0"
  }
}