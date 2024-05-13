resource "oci_devops_project" "project-devops" {
  #Required
  compartment_id = oci_identity_compartment.compartment.id
  name           = var.project_name
  notification_config {
    #Required
    topic_id = oci_ons_notification_topic.test_notification_topic.id
  }

  #Optional

  description = var.project_description

}

resource "oci_ons_notification_topic" "test_notification_topic" {
  compartment_id = oci_identity_compartment.compartment.id
  name           = var.notification
}