#############Variaveis Api-Gateway##################
variable "nomeApiGateway" {
  type    = string
  default = "Api Gateway"
}
variable "endpoint_type_api_gateway" {
  type    = string
  default = "PUBLIC"
}
#############Compartments##################
variable "compartment_id" {
  type      = string
  default   = "ocid1.compartment.oc1..aaaaaaaa4ovxjbj2skv3mmyo3dhtsnd6wjifyquu62uhlv5sjhnyqsq7qisq"
  sensitive = true
}
variable "compartment_description" {
  type    = string
  default = "Ambiente de QAS"
}

variable "compartment_name" {
  type    = string
  default = "QAS-TESTE"
}
#############DevOps-Project##################
variable "project_name" {
  type    = string
  default = "NomeDoProjeto"
}
variable "project_description" {
  type    = string
  default = "DescriçãodoProjeto"

}
variable "notification" {
  type    = string
  default = "value"
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
  default = "VM.Standard.A1.flex"
}
variable "availability_domain" {
  type    = string
  default = "BeyJ:SA-SAOPAULO-1-AD-1"
}
variable "image_id" {
  type    = string
  default = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaifgwx2hoiq75vyzpzkap7vy4g5wuaocihke2cazt5pmcoblgy4ca"
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



#############Repository##################
variable "repository_name" {
  type    = string
  default = "Nome-Do-Repositorio"
}
variable "repository_repository_type" {
  type    = string
  default = "HOSTED"
}

variable "repository_default_branch" {
  type    = string
  default = "dev"
}

variable "repository_description" {
  type    = string
  default = "Repoitorio do Projeto X"
}
variable "container_repository_display_name" {
  type    = string
  default = "NomedoRegistryDeContainer"
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
  default = "value"

}
variable "artifact_repository_repository_type" {
  type    = string
  default = "GENERIC"
}
#############Fim##################














