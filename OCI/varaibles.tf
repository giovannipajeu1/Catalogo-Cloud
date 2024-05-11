variable "tenancy_ocid" {
  type      = string
  default   = "ocid1.tenancy.oc1..aaaaaaaafdduxmvajcndqnxg6gr3glo5hinghixw35cyk4dqishfu7xsadvq"
  sensitive = true
}

variable "private_key_path" {
  type      = string
  default   = "/home/v3x0r/.key/cp.pem"
  sensitive = true
}

variable "user_ocid" {
  type      = string
  default   = "ocid1.user.oc1..aaaaaaaamuzskolyby5myakulqkskbl5s2cwqk3zzfpmy262pxzszpv66gsq"
  sensitive = true
}

variable "region" {
  type    = string
  default = "sa-saopaulo-1"
}

variable "fingerprint" {
  type    = string
  default = "a7:83:ba:fe:6d:ee:2e:7f:40:a5:52:08:1a:38:1e:a1"
}

variable "compartment_id" {
  type      = string
  default   = "ocid1.compartment.oc1..aaaaaaaa4ovxjbj2skv3mmyo3dhtsnd6wjifyquu62uhlv5sjhnyqsq7qisq"
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
  default = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaagwjfqfxv64vjv4f2shadbnpd22civx5bpt3sdd4feweqdye4wqja"
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