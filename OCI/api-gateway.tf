# Configuração do API Gateway
resource "oci_apigateway_gateway" "api_gateway" {
  compartment_id = var.compartment_id
  display_name   = var.nomeApiGateway
  subnet_id      = oci_core_subnet.subnet_publica.id
  endpoint_type  = var.endpoint_type_api_gateway
}
