resource "aws_vpc" "avg_vpc" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy

  tags = {
    name = "avg-vpc"
  }
}

resource "aws_subnet" "avg_subnet_pub" {
  vpc_id     = aws_vpc.avg_vpc.id
  cidr_block = var.cidr_block_subnet_pub

  tags = {
    name = "SubNet Publica"
  }
}

resource "aws_subnet" "avg_subnet_priv" {
  vpc_id     = aws_vpc.avg_vpc.id
  cidr_block = var.cidr_block_subnet_priv

  tags = {
    name = "SubNet Privada"
  }
}

resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = aws_vpc.avg_vpc.id

  tags = {
    name = " Internet Gateway VPC"
  }
}

resource "aws_eip" "aws_eip" {

  depends_on = [aws_internet_gateway.aws_internet_gateway]

}

resource "aws_nat_gateway" "aws_nat_gateway" {
  allocation_id = aws_eip.aws_eip.id
  subnet_id     = aws_subnet.avg_subnet_pub.id

  depends_on = [aws_internet_gateway.aws_internet_gateway]
}

resource "aws_route_table" "aws_route_table" {
  vpc_id = aws_vpc.avg_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws_internet_gateway.id
  }

}

resource "aws_route_table_association" "aws_route_table_association" {
  subnet_id      = aws_subnet.avg_subnet_pub.id
  route_table_id = aws_route_table.aws_route_table.id
}


resource "aws_route_table" "aws_route_table_privada" {
  vpc_id = aws_vpc.avg_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.aws_nat_gateway.id
  }

}

resource "aws_route_table_association" "aws_route_table_association_privada" {
  subnet_id      = aws_subnet.avg_subnet_priv.id
  route_table_id = aws_route_table.aws_route_table_privada.id
}
