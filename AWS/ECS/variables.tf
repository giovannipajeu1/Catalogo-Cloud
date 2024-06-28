###########################################ECS######################################################################################
variable "nomeCluster" {
  type    = string
  default = "ecommerce"
}

variable "nameECSService" {
  type    = string
  default = "ecommerce"
}

variable "ContainerPort" {
  type    = number
  default = 8080
}

variable "ContainerName" {
  type    = string
  default = ""
}


variable "aws_count_id" {
  type      = string
  default   = "891377173184"
  sensitive = true
}
#################################################################################################################################
variable "access_key_aws" {
  type      = string
  default   = ""
  sensitive = true
}

variable "secret_key_aws" {
  type      = string
  default   = ""
  sensitive = true
}

variable "region" {
  type    = string
  default = "us-east-1"

}
#################################################################################################################################
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

variable "cidr_block_subnet_pub2" {
  type    = string
  default = "10.0.2.0/24"
}
variable "cidr_block_subnet_priv" {
  type    = string
  default = "10.0.1.0/24"
}


variable "availability_zone_pub" {
  type    = string
  default = "us-east-1a"
}

variable "availability_zone_pub2" {
  type    = string
  default = "us-east-1b"
}

variable "availability_zone_priv" {
  type    = string
  default = "us-east-1b"
}

variable "nameLb" {
  type    = string
  default = "load-balancer"
}

variable "internal" {
  type    = bool
  default = false
}

variable "Ambiente" {
  type    = string
  default = "producao"
}
#################################################################################################################################
variable "name" {
  type    = string
  default = "api"
}
