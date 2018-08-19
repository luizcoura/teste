#### UBUNTU 16.04
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

#### AMAZON LINUX
data "aws_ami" "amazon" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}