module "Infra" {
  source = "../Terraform_Lab/Infra"
  #tenant_name = var.tenant_settings["tenant_name"]
  #ssh_public_key = var.tenant_settings["ssh_public_key"]
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
  aws_region = var.aws_region
  #core_aws_access_key = var.core_aws_access_key
  #core_aws_secret_key = var.core_aws_secret_key
  #core_aws_region = var.core_aws_region
  #ssm_secrets = var.ssm_secrets
  #ssm_secrets_advanced = var.ssm_secrets_advanced
  tenant_settings = var.tenant_settings
}