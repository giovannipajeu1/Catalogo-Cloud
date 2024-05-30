#############Main##################
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
#############Variaveis Api-Gateway##################
variable "nomeApiGateway" {
  type    = string
  default = "Api Gateway"
}
variable "endpoint_type_api_gateway" {
  type    = string
  default = "PUBLIC"
}
#############Network##################
variable "nomeNatGateway" {
  type    = string
  default = "Internet Gateway"
}
variable "nomeVnc" {
  type    = string
  default = "VNC"
}
variable "net_gateway_name" {
  type    = string
  default = "Net Gateway"
}

variable "destinationPrivate" {
  type    = string
  default = "10.0.2.0/24"
}
#############Nodes Pool##################
variable "kubeversion" {
  type    = string
  default = "v1.29.1"
}
variable "namepool" {
  type    = string
  default = "nome do pool"
}
variable "shape" {
  type    = string
  default = ""
}
variable "availability_domain" {
  type    = string
  default = "BeyJ:SA-SAOPAULO-1-AD-1"
}
variable "image_id" {
  type    = string
  default = ""
}
variable "source_type" {
  type    = string
  default = "IMAGE"
}
variable "memory_in_gbs" {
  type    = string
  default = "8"
}

variable "ocpus" {
  type    = string
  default = "1"
}
variable "eviction_grace_duration" {
  type    = string
  default = "PT1H"
}

variable "is_force_delete_after_grace_duration" {
  type    = string
  default = "false"
}
variable "nodeTamanho" {
  type    = number
  default = 3
}
#############Cluster##################
variable "nomecluster" {
  type    = string
  default = "PROD-GRU-OCI"
}
variable "cni_type" {
  type    = string
  default = "FLANNEL_OVERLAY"
}
variable "pods_cidr" {
  type    = string
  default = "10.244.0.0/16"
}
variable "services_cidr" {
  type    = string
  default = "10.96.0.0/16"
}

variable "freeform_tags" {
  type    = string
  default = "projeto"
}
#############Compartments##################

variable "compartment_description" {
  type    = string
}

variable "compartment_name" {
  type    = string
}