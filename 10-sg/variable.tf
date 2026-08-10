variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default = [ # database
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    # "catalogue", "user", "cart", "shipping", "payment",
    # frontend
    # "frontend",
    # bastion
    "bastion",
    # ingress-load-balancer
    "ingress_alb",
    # backend-load-balancer
    # "backend_alb",
    ## vpn
    "open_vpn",
     "eks_control_plane",
     "eks_node"
  ]
}