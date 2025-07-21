provider "aws"{
    region = var.region
}

module "vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "5.0.0"

    name = "eks-vpc"
    cidr = var.vpc_cidr

    azs = ["${var.region}a","${var.region}b"]
    private_subnets = var.private_subnet_cidrs
    public_subnets = var.public_subnet_cidrs

    enable_nat_gateway = true
    single_nat_gateway = true

    tags = {
        "Name"                                  = "eks-vpc"
        "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    }
    
    public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
    }

    private_subnet_tags = {
        "kubernetes.io/role/internal-elb" = "1"
    }
}
