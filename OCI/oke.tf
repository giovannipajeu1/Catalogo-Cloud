resource "oci_containerengine_cluster" "oke-cluster" {
  compartment_id     = var.compartment_id
  kubernetes_version = var.kubeversion
  name               = var.nomecluster
  vcn_id             = oci_core_virtual_network.minha_vcn.id

  options {
    add_ons {
      is_kubernetes_dashboard_enabled = true
      is_tiller_enabled               = false
    }
    kubernetes_network_config {
      pods_cidr     = var.pods_cidr
      services_cidr = var.services_cidr
    }
    service_lb_subnet_ids = [oci_core_subnet.subnet_privada.id]
  }
}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}

resource "oci_containerengine_node_pool" "oke-node-pool" {
  cluster_id         = oci_containerengine_cluster.oke-cluster.id
  compartment_id     = var.compartment_id
  kubernetes_version = var.kubeversion
  name               = var.namepool
  node_config_details {
    placement_configs {
      availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
      subnet_id           = oci_core_subnet.subnet_privada.id
    }
    size = var.nodeTamanho
  }
  node_shape = var.shape


  node_source_details {
    image_id    = var.image_id
    source_type = var.source_type
  }
}
