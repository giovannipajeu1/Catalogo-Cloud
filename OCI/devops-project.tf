resource "oci_devops_project" "project-devops" {
  #Required
  compartment_id = oci_identity_compartment.DEVOPS.id
  name           = "${var.project_name}DEVOPS"
  depends_on = [ oci_identity_compartment.DEVOPS ]
  notification_config {
    #Required
    topic_id = oci_ons_notification_topic.notification-devops.id
  }

  #Optional

  description = "${var.project_description}DEVOPS"

}
