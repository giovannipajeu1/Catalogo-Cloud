resource "oci_devops_repository" "nome_repositorio" {
  #Required
  name            = var.repository_name
  project_id      = oci_devops_project.project-devops.id
  repository_type = var.repository_repository_type

  #Optional
  default_branch = var.repository_default_branch
  description    = var.repository_description
  # mirror_repository_config {
  #     trigger_schedule {
  #       schedule_type = 
  #     }
  # }
}

resource "oci_artifacts_container_repository" "test_container_repository" {
  #Required
  compartment_id = oci_identity_compartment.compartment.id
  display_name   = var.container_repository_display_name
 

  #Optional
  is_immutable = var.repository_is_immutable
  is_public    = var.container_repository_is_public
}

resource "oci_artifacts_repository" "test_repository" {
  #Required
  compartment_id  = oci_identity_compartment.compartment.id
  is_immutable    = var.repository_is_immutable
  repository_type = var.artifact_repository_repository_type

  #Optional
  description  = var.repository_description
  display_name = var.repository_display_name

}