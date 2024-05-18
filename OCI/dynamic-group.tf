resource "oci_identity_dynamic_group" "dynamic" {
  #Required
  compartment_id = var.compartment_id
  description    = "${var.dynamic_group_description}devops"
  matching_rule  = var.dynamic_group_matching_rule
  name           = "${var.dynamic_group_name}-DEVOPS"
  depends_on = [ oci_devops_project.project-devops ]
}

