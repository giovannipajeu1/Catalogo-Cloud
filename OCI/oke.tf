resource "oci_containerengine_cluster" "oke-cluster" {
  compartment_id     = oci_identity_compartment.compartment.id
  kubernetes_version = var.kubeversion
  name               = var.nomecluster
  vcn_id             = oci_core_virtual_network.minha_vcn.id
  type               = "BASIC_CLUSTER"
  cluster_pod_network_options {
    cni_type = var.cni_type
  }

  options {
    add_ons {
      is_kubernetes_dashboard_enabled = true
      is_tiller_enabled               = false
    }
    kubernetes_network_config {
      pods_cidr     = var.pods_cidr
      services_cidr = var.services_cidr

    }
    admission_controller_options {
      is_pod_security_policy_enabled = false
    }
    service_lb_subnet_ids = [oci_core_subnet.subnet_publica.id]
  }

  endpoint_config {
    is_public_ip_enabled = false
    subnet_id            = oci_core_subnet.subnet_privada.id
  }

  freeform_tags = {
    "projeto" = var.freeform_tags
  }
  image_policy_config {
    is_policy_enabled = false
  }

}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}



