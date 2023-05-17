module "eks_cluster" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = var.cluster_name
  vpc_id          = var.vpc_id
  subnets         = []
  instance_types  = ["t3a.large"]
  desired_capacity = 2
  private_subnet_ids = var.private_subnet_ids
  manage_aws_auth = true
  kubeconfig_aws_authenticator_additional_args = ["--region", "${var.region}"]
}
