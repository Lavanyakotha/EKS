variable "region"{
    default = "us-east-1"
}

variable "cluster-name"{
    default = "private-eks-cluster"
}

variable "vpc_cidr"{
    default = "10.0.0.0/16"
}

variable "public_subnet_cidrs"{
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs"{
    default =  ["10.0.3.0/24","10.0.4.0/24"]
}

variable "ecr_repo_name"{
    default = "flask-app"
}