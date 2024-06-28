# Configuração do API Gateway
resource "oci_apigateway_gateway" "api_gateway_devops" {
  compartment_id = oci_identity_compartment.DEVOPS.id
  display_name   = "${var.nomeApiGateway}"
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway

}
