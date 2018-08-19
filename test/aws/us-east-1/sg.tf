module "security_group" {
  source = "../../../modules/aws/sg"

  name        = "web-server"
  description = "Security group for web-server with HTTP ports open"
  vpc_id      = "${module.vpc.vpc_id}"

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp","ssh-tcp"]
  egress_rules        = ["all-all"]
}