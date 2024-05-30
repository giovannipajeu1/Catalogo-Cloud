variable "access_key_aws" {
  type      = string
  default   = env
  sensitive = true
}

variable "secret_key_aws" {
  type      = string
  default   = env
  sensitive = true
}

variable "region" {
  type    = string
  default = "us-east-1"

}



variable "instance_tenancy" {
  type    = string
  default = "default"
}


variable "cidr_block_vpc" {
  type    = string
  default = "10.0.0.0/16"
}

variable "cidr_block_subnet_pub" {
  type    = string
  default = "10.0.0.0/24"
}

variable "cidr_block_subnet_priv" {
  type    = string
  default = "10.0.1.0/24"
}


variable "cluster_name" {
  type    = string
  default = "nome-do-cluster"
}


variable "kubernetes_version" {
  default = "1.29"
}

variable "fargate_profile_name" {
  type    = string
  default = "fargate-profile"
}


variable "availability_zone_pub" {
  type = string
  default = "us-east-1a"
}

variable "availability_zone_priv" {
  type = string
  default = "us-east-1b"
}



variable "nameLb" {
  type = string
  default = "Nome do LoadBalancer"
}

variable "internal" {
  type = bool
  default = false
}

variable "TypeLoadBalancer" {
  type = string
  default = "network"
}

variable "Ambiente" {
  type = string
  default = "Dev"
}