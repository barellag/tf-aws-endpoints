#main terraform file to create the resources (endpoints)

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_vpc_endpoint" "vpc_endpoint" {
  count = length(var.endpoints)
  
  vpc_id              = var.vpc_id
  service_name        = "com.amazonaws.${var.region}.${var.endpoints[count.index].service}"
  vpc_endpoint_type   = "Interface"
  security_group_ids  = [var.security_group_id]
  private_dns_enabled = true
  subnet_ids          = [var.subnet_id]

  tags = {
    Name = "${var.creator_initials}-${var.endpoints[count.index].name}-endpoint"
  }
}

resource "aws_vpc_endpoint" "s3_gateway" {
  vpc_id       = var.vpc_id
  service_name = "com.amazonaws.${var.region}.s3"
  route_table_ids = [var.route_table_id]
  vpc_endpoint_type = "Gateway"
  
  tags = {
    Name = "${var.creator_initials}-s3-gateway-endpoint"
  }
}
