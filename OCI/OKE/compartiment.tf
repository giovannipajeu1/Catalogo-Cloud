resource "oci_identity_compartment" "PRD" {

  compartment_id = var.compartment_id
  description    = "${var.compartment_description}Comaprtimento de Producao"
  name           = "${var.compartment_name}PRD"
}

