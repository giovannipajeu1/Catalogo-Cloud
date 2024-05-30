# Configuração do API Gateway
resource "oci_apigateway_gateway" "api_gateway_devops" {
  compartment_id = oci_identity_compartment.DEVOPS.id
  display_name   = "${var.nomeApiGateway}-DEVOPS"
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway

}

resource "oci_apigateway_gateway" "api_gateway_dev" {
  compartment_id = oci_identity_compartment.DEV.id
  display_name   = "${var.nomeApiGateway}-DEV"
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway
}



resource "oci_apigateway_gateway" "api_gateway_qas" {
  compartment_id = oci_identity_compartment.QAS.id
  display_name   = "${var.nomeApiGateway}-QAS"
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway
}



resource "oci_apigateway_gateway" "api_gateway_prd" {
  compartment_id = oci_identity_compartment.PRD.id
  display_name   = "${var.nomeApiGateway}-PRD"
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway
}

