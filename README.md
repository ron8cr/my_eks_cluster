![provision-eks-with-terraform-between-text](https://github.com/ron8cr/my_eks_cluster/assets/124076577/1930aaa1-8063-4696-9528-913948820d96)

# My EKS Cluster Terraform Configuration

This repository contains Terraform configuration files to create an EKS cluster in AWS using a modular approach.

## Prerequisites

- Terraform >= 0.13
- AWS CLI configured with appropriate credentials

## Getting Started

1. Clone this repository to your local machine.

2. Navigate to the root module directory:

```
cd root_module
```

3. Initialize Terraform:
```
terraform init
```

4. Review and customize the input variables in `variables.tf` file as per your requirements.

5. Modify the provider configuration in `providers.tf` file to specify the AWS region you want to deploy to.

6. Deploy the infrastructure:

```
terraform apply
```


This will create a VPC with 2 public and 2 private subnets, and an EKS cluster using the `my_eks_cluster` module.

7. After the deployment is complete, Terraform will output the necessary information to access the EKS cluster.

## Folder Structure

- `my_eks_cluster/`: Terraform module for creating the EKS cluster.
- `root_module/`: Root module that uses the `my_eks_cluster` module to create the EKS cluster and associated resources.

## Customization

You can customize the deployment by modifying the variables in the `variables.tf` file in the root module directory. Refer to the descriptions provided for each variable to understand its purpose.

## Clean Up

To destroy the created infrastructure and resources, run the following command:
```
terraform destroy
```
Make sure to review the list of resources that will be destroyed before confirming.
