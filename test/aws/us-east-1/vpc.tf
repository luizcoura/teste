module "vpc" {
  source = "../../../modules/aws/vpc"

  name = "wiboo-dev"

  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a"]
  public_subnets  = ["10.0.1.0/24"]
  private_subnets = ["10.0.2.0/24"]
  
  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Owner       = "wiboo"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "wiboo-dev"
  }
}
