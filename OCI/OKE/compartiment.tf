resource "oci_identity_compartment" "PRD" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}Comaprtimento de Producao"
  name           = "${var.compartment_name}PRD"
}

resource "oci_identity_compartment" "DEV" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}Compartimento de DEV"
  name           = "${var.compartment_name}DEV"
}

resource "oci_identity_compartment" "QAS" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}Compartimento de QAS"
  name           = "${var.compartment_name}QAS"
}

resource "oci_identity_compartment" "DEVOPS" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}Compartimento de DEVOPS"
  name           = "${var.compartment_name}DEVOPS"
}


