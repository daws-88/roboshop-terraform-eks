locals {
  common_name_suffix           = "${var.project_name}-${var.environment}" # roboshop-dev
  vpc_id                       = data.aws_ssm_parameter.vpc_id.value
  ingress_alb_sg_id           = data.aws_ssm_parameter.ingress_alb_sg_id.value
  private_subnet_ids            = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  eks_control_plane_sg_id = data.aws_ssm_parameter.eks_control_plane_sg_id.value 
  eks_node_sg_id = data.aws_ssm_parameter.eks_node_sg_id.value
  common_tags = {
    project     = "roboshop"
    environment = "dev"
    Terraform   = "true"
  }
}