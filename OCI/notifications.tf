resource "oci_ons_notification_topic" "notification-devops" {
  compartment_id = oci_identity_compartment.DEVOPS.id
  name           = "${var.notification}devops"
  
}

