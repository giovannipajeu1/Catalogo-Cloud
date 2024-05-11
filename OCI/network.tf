# Definição da VCN
resource "oci_core_virtual_network" "minha_vcn" {
  cidr_block     = "10.0.0.0/16"
  compartment_id = var.compartment_id
  display_name   = var.nomeVnc
  dns_label      = "meudsnlabel"
}

# Configuração do NAT Gateway - SubNets Publicas
resource "oci_core_nat_gateway" "nat_gateway" {
  compartment_id = var.compartment_id
  display_name   = var.nomeNatGateway
  vcn_id         = oci_core_virtual_network.minha_vcn.id
  block_traffic  = false
}
# Sub-rede pública
resource "oci_core_subnet" "subnet_publica" {
  cidr_block     = "10.0.1.0/24"
  compartment_id = var.compartment_id
  display_name   = "Subnet Pública"
  vcn_id         = oci_core_virtual_network.minha_vcn.id
  dns_label      = "subnetpublica"
  security_list_ids = [oci_core_security_list.public_security_list.id]

}
# Rota para a sub-rede pública
resource "oci_core_route_table" "public_route_table" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_virtual_network.minha_vcn.id
  route_rules {
    destination       = "0.0.0.0/0"
    network_entity_id = oci_core_internet_gateway.net_gateway.id
  }
}


#Configuração do Internet Gateway - SubNets Privadas
resource "oci_core_internet_gateway" "net_gateway" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_virtual_network.minha_vcn.id
}

# Sub-rede privada
resource "oci_core_subnet" "subnet_privada" {
  cidr_block     = var.destinationPrivate
  compartment_id = var.compartment_id
  display_name   = "Subnet Privada"
  vcn_id         = oci_core_virtual_network.minha_vcn.id
  dns_label      = "subnetprivada"
  security_list_ids = [oci_core_security_list.private-security-list.id]

}

# Rota para a sub-rede privada
resource "oci_core_route_table" "private_route_table" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_virtual_network.minha_vcn.id
  route_rules {
    destination       = var.destinationPrivate
    network_entity_id = oci_core_nat_gateway.nat_gateway.id
  }
}

