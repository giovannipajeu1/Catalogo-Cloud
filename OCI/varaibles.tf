
#############Compartments##################
variable "compartment_id" {
  type      = string
  default   = "ocid1.compartment.oc1..aaaaaaaa4ovxjbj2skv3mmyo3dhtsnd6wjifyquu62uhlv5sjhnyqsq7qisq"
  sensitive = true
}
variable "compartment_description" {
  type    = string
  default = "Comparimento de"
}

variable "compartment_name_" {
  type    = string
  default = " "
}
#############DevOps-Project##################
variable "project_description" {
  type    = string
  default = "Descrição do Projeto "
}
variable "project_name" {
  type    = string
  default = "PROJETO "
}
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

#############Repository##################

variable "repository_repository_type" {
  type    = string
  default = "HOSTED"
}

variable "repository_default_branch" {
  type    = string
  default = "dev"
}
variable "repository_name" {
  type    = string
  default = "Repositoriode"
}

variable "repository_description" {
  type    = string
  default = "Description "
}

variable "repository_is_immutable" {
  type    = bool
  default = false
}

variable "container_repository_is_public" {
  type    = bool
  default = false
}

variable "repository_display_name" {
  type    = string
  default = "dev"

}
variable "artifact_repository_repository_type" {
  type    = string
  default = "GENERIC"
}

variable "container_repository_display_name" {
  type    = string
  default = "dev"
}

#############Dynamic-groups##################
variable "dynamic_group_matching_rule" {
  type    = string
  default = "Preencher"
}
variable "dynamic_group_name" {
  type    = string
  default = "Grupo"
}

variable "dynamic_group_description" {
  type    = string
  default = "Grupo Dincamico de "
}
#############Notifications##################
variable "notification" {
  type    = string
  default = ""
}

