# Network Setup: VPC, Subnet, IGW, Routes | network.tf

data "aws_availability_zones" "aws-az" {
  state = "available"
}

# create vpc
resource "aws_vpc" "aws-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  
}

# create subnets
resource "aws_subnet" "aws-subnet" {
  vpc_id                  = aws_vpc.aws-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  
}

# create internet gateway
resource "aws_internet_gateway" "aws-igw" {
  vpc_id = aws_vpc.aws-vpc.id
  tags = {
    Name        = "var.app_name-igw"
    Environment = "var.app_environment"
  }
}

# create routes
resource "aws_route_table" "aws-route-table" {
  vpc_id = aws_vpc.aws-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-igw.id
  }
  tags = {
    Name        = "var.app_name-route-table"
    Environment = "var.app_environment"
  }
}

resource "aws_main_route_table_association" "aws-route-table-association" {
  vpc_id         = aws_vpc.aws-vpc.id
  route_table_id = aws_route_table.aws-route-table.id
}


