variable "access_key_aws" {
  type      = string
  default   = file(env)
  sensitive = true
}

variable "secret_key_aws" {
  type      = string
  default   = file(env)
  sensitive = true
}

variable "region" {
  type    = string
  default = "us-east-1"

}

variable "port_data_base" {
  type    = number
  default = 27017
}


variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami" {
  type    = string
  default = "ami-0f403e3180720dd7e"
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