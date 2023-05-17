provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                 = "my-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = ["us-west-2a", "us-west-2b", "us-west-2c"]
  public_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets      = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "my_eks_cluster" {
  source        = "./my_eks_cluster"

  vpc_id        = module.vpc.vpc_id
  cluster_name  = "my-eks-cluster"
  private_subnet_ids = module.vpc.private_subnets
}
