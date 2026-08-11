locals {
  ami_id           = data.aws_ami.joindevops.id
  bastion_sg_id    = data.aws_ssm_parameter.bastion_sg_id.value
  public_sunnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  common_tags = {
    project_name = var.project_name
    environment  = var.environment
    Terraform    = "true"
  }
  common_name_suffix = "${var.project_name}-${var.environment}"
}