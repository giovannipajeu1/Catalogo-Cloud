resource "oci_identity_compartment" "PRD" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}PRD"
  name           = "${var.compartment_name_}PRD"
}

resource "oci_identity_compartment" "DEV" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}DEV"
  name           = "${var.compartment_name_}DEV"
}

resource "oci_identity_compartment" "QAS" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}QAS"
  name           = "${var.compartment_name_}QAS"
}

resource "oci_identity_compartment" "DEVOPS" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}DEVOPS"
  name           = "${var.compartment_name_}DEVOPS"
}


