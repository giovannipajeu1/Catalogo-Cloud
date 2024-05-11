variable "tenancy_ocid" {
  type      = string
  default   = 
  sensitive = true
}

variable "private_key_path" {
  type      = string
  default   = 
  sensitive = true
}

variable "user_ocid" {
  type      = string
  default   =
  sensitive = true
}

variable "region" {
  type    = string
  default = "sa-saopaulo-1"
}

variable "fingerprint" {
  type    = string
  default = 
}

variable "compartment_id" {
  type      = string
  default   = 
  sensitive = true
}
variable "shape" {
  type    = string
  default = "VM.Standard2.1"
}
variable "kubeversion" {
  type    = string
  default = "v1.29.1"
}
variable "nomecluster" {
  type    = string
  default = "DEV-GRU-OCI"
}
variable "namepool" {
  type    = string
  default = "nome do pool"
}
variable "image_id" {
  type    = string
  default = 
}
variable "source_type" {
  type    = string
  default = "IMAGE"
}
variable "nomeApiGateway" {
  type    = string
  default = "Api Gateway"
}

variable "nomeNatGateway" {
  type    = string
  default = "Internet Gateway"
}
variable "nomeVnc" {
  type    = string
  default = "VNC"
}
variable "nodeTamanho" {
  type    = number
  default = 3
}

variable "pods_cidr" {
  type    = string
  default = "10.244.0.0/16"
}

variable "services_cidr" {
  type    = string
  default = "10.96.0.0/16"
}

variable "endpoint_type_api_gateway" {
  type    = string
  default = "PUBLIC"
}

variable "destinationPrivate" {
  type    = string
  default = "10.0.2.0/24"
}