module "ec2" {
  source = "../../../modules/aws/ec2"

  instance_count = 1

  name                        = "wiboo-dev"
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "t2.nano"
  subnet_id                   = "${element(module.vpc.public_subnets, 0)}"
  vpc_security_group_ids      = ["${module.security_group.this_security_group_id}"]
  associate_public_ip_address = true
  user_data = "${file("install.sh")}"
  key_name = "luizcoura"
}