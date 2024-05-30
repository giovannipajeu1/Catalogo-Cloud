###########################################PRD##################################################
resource "oci_containerengine_node_pool" "oke-node-pool-PRD" {
  cluster_id         = oci_containerengine_cluster.oke-cluster-PRD.id
  compartment_id     = oci_identity_compartment.PRD.id
  kubernetes_version = var.kubeversion
  name               = "{var.namepool}-PRD"
  node_config_details {
    placement_configs {
      availability_domain = var.availability_domain
      subnet_id           = oci_core_subnet.subnet_privada.id
    }
    size = var.nodeTamanho
  }
  node_shape = var.shape


  node_source_details {
    image_id    = var.image_id
    source_type = var.source_type
  }
  node_shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  freeform_tags = {
    "projeto" = var.freeform_tags
  }

  node_eviction_node_pool_settings {
    eviction_grace_duration              = var.eviction_grace_duration
    is_force_delete_after_grace_duration = var.is_force_delete_after_grace_duration
  }
}
##############################################DEV###########################################
resource "oci_containerengine_node_pool" "oke-node-pool-DEV" {
  cluster_id         = oci_containerengine_cluster.oke-cluster-DEV.id
  compartment_id     = oci_identity_compartment.DEV.id
  kubernetes_version = var.kubeversion
  name               = "${var.namepool}-DEV"
  node_config_details {
    placement_configs {
      availability_domain = var.availability_domain
      subnet_id           = oci_core_subnet.subnet_privada.id
    }
    size = var.nodeTamanho
  }
  node_shape = var.shape


  node_source_details {
    image_id    = var.image_id
    source_type = var.source_type
  }
  node_shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  freeform_tags = {
    "projeto" = var.freeform_tags
  }

  node_eviction_node_pool_settings {
    eviction_grace_duration              = var.eviction_grace_duration
    is_force_delete_after_grace_duration = var.is_force_delete_after_grace_duration
  }
}
#################################QAS############################################################
resource "oci_containerengine_node_pool" "oke-node-pool-QAS" {
  cluster_id         = oci_containerengine_cluster.oke-cluster-QAS.id
  compartment_id     = oci_identity_compartment.QAS.id
  kubernetes_version = var.kubeversion
  name               = "${var.namepool}-QAS"
  node_config_details {
    placement_configs {
      availability_domain = var.availability_domain
      subnet_id           = oci_core_subnet.subnet_privada.id
    }
    size = var.nodeTamanho
  }
  node_shape = var.shape


  node_source_details {
    image_id    = var.image_id
    source_type = var.source_type
  }
  node_shape_config {
    memory_in_gbs = var.memory_in_gbs
    ocpus         = var.ocpus
  }
  freeform_tags = {
    "projeto" = var.freeform_tags
  }

  node_eviction_node_pool_settings {
    eviction_grace_duration              = var.eviction_grace_duration
    is_force_delete_after_grace_duration = var.is_force_delete_after_grace_duration
  }
}