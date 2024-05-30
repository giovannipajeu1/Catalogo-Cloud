resource "aws_vpc" "vpc_ecs" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy

  tags = {
    name = "avg-vpc"
  }
}

resource "aws_subnet" "subnet_pub_ecs" {
  vpc_id            = aws_vpc.vpc_ecs.id
  cidr_block        = var.cidr_block_subnet_pub
  availability_zone = var.availability_zone_pub

  map_public_ip_on_launch = true
  tags = {
    name = "SubNet Publica"
  }
}

resource "aws_subnet" "subnet_priv_ecs" {
  vpc_id            = aws_vpc.vpc_ecs.id
  cidr_block        = var.cidr_block_subnet_priv
  availability_zone = var.availability_zone_priv


  tags = {
    name = "SubNet Privada"
  }
}

resource "aws_internet_gateway" "aws_internet_gateway" {
  vpc_id = aws_vpc.vpc_ecs.id

  tags = {
    name = " Internet Gateway VPC"
  }
}

resource "aws_eip" "aws_eip" {

  depends_on = [aws_internet_gateway.aws_internet_gateway]

}

resource "aws_nat_gateway" "aws_nat_gateway" {
  allocation_id = aws_eip.aws_eip.id
  subnet_id     = aws_subnet.subnet_pub_ecs.id

  depends_on = [aws_internet_gateway.aws_internet_gateway]
}

resource "aws_route_table" "aws_route_table" {
  vpc_id = aws_vpc.vpc_ecs.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws_internet_gateway.id
  }

}

resource "aws_route_table_association" "aws_route_table_association" {
  subnet_id      = aws_subnet.subnet_pub_ecs.id
  route_table_id = aws_route_table.aws_route_table.id
}


resource "aws_route_table" "aws_route_table_privada" {
  vpc_id = aws_vpc.vpc_ecs.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.aws_nat_gateway.id
  }

}

resource "aws_route_table_association" "aws_route_table_association_privada" {
  subnet_id      = aws_subnet.subnet_priv_ecs.id
  route_table_id = aws_route_table.aws_route_table_privada.id
}


resource "aws_lb" "main" {
  name               = "${var.name}-alb-${var.Ambiente}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = aws_security_groups.*.id
  subnets            = aws_subnets.*.id
 
  enable_deletion_protection = false
}
 
resource "aws_alb_target_group" "main" {
  name        = "${var.name}-tg-${var.Ambiente}"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vpc_ecs.id
  target_type = "ip"
 
  health_check {
   healthy_threshold   = "3"
   interval            = "30"
   protocol            = "HTTP"
   matcher             = "200"
   timeout             = "3"
   path                = var.health_check_path
   unhealthy_threshold = "2"
  }
}

resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_lb.main.id
  port              = 80
  protocol          = "HTTP"
 
  default_action {
   type = "redirect"
 
   redirect {
     port        = 443
     protocol    = "HTTPS"
     status_code = "HTTP_301"
   }
  }
}
 
resource "aws_alb_listener" "https" {
  load_balancer_arn = aws_lb.main.id
  port              = 443
  protocol          = "HTTPS"
 
  ssl_policy        = "ELBSecurityPolicy-2016-08"
 
 
  default_action {
    target_group_arn = aws_alb_target_group.main.id
    type             = "forward"
  }
}