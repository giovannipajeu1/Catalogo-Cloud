
resource "oci_artifacts_container_repository" "container_repository-devops" {
  #Required
  compartment_id = oci_identity_compartment.DEVOPS.id
  display_name   = "${var.container_repository_display_name}devops"
  depends_on = [ oci_devops_project.project-devops ]


  #Optional
  is_immutable = var.repository_is_immutable
  is_public    = var.container_repository_is_public
}

resource "oci_artifacts_repository" "repository_DEVOPS" {
  #Required
  compartment_id  = oci_identity_compartment.DEVOPS.id
  is_immutable    = var.repository_is_immutable
  repository_type = var.artifact_repository_repository_type
  depends_on = [ oci_devops_project.project-devops_DEVOPS ]

  #Optional
  description  = "${var.repository_description} devops"
  display_name = "${var.container_repository_display_name}devops"
}

