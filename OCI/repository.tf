resource "oci_devops_repository" "repositorio" {
  #Required
  name            = "${var.repository_name}devops"
  project_id      = oci_devops_project.project-devops.id
  repository_type = var.repository_repository_type
  depends_on = [ oci_devops_project.project-devops ]

  #Optional
  default_branch = "${var.repository_default_branch}dev"
  description    = "${var.repository_description}devops"
  # mirror_repository_config {
  #     trigger_schedule {
  #       schedule_type = 
  #     }
  # }
}
