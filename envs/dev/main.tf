provider "aws" {
  region = var.reg
  access_key = var.access
  secret_key = var.secret
}

module "vpc" {
  source = "../../modules/vpc"
}

module "subnet" {
  source               = "../../modules/subnet"
  vpc_id               = module.vpc.vpc_id
  pub_subnet1_cidr     = var.pub_subnet1_cidr
  pub_subnet1_az       = var.pub_subnet1_az
  pub_subnet2_cidr     = var.pub_subnet2_cidr
  pub_subnet2_az       = var.pub_subnet2_az
  private_subnet1_cidr = var.private_subnet1_cidr
  private_subnet1_az   = var.private_subnet1_az
}

module "sg" {
  source = "../../modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "route" {
  source            = "../../modules/route"
  vpc_id            = module.vpc.vpc_id
  public_subnet_id  = module.subnet.pub_subnet1_id
  private_subnet_id = module.subnet.private_subnet1_id
}

module "ec2" {
  depends_on = [ module.route ]
  source            = "../../modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  private_subnet_id = module.subnet.private_subnet1_id
  sg_id             = module.sg.app_1_sg_id
  user_data_file    = "./user_data.sh"
}

module "alb" {
  source            = "../../modules/alb"
  vpc_id            = module.vpc.vpc_id
  alb_sg_id         = module.sg.app_1_alb_sg_id
  public_subnet_ids = [module.subnet.pub_subnet1_id, module.subnet.pub_subnet2_id]
  instance_id       = module.ec2.instance_id
}
