provider "aws" {
  region  = var.aws_region
  profile = "AdminAccess"
}

resource "aws_vpc" "day2_mayur_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "day2_mayur_public_subnet" {
  vpc_id                  = aws_vpc.day2_mayur_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "day2_mayur_igw" {
  vpc_id = aws_vpc.day2_mayur_vpc.id
}

resource "aws_route_table" "day2_mayur_rt" {
  vpc_id = aws_vpc.day2_mayur_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.day2_mayur_igw.id
  }
}

resource "aws_route_table_association" "day2_mayur_rta" {
  subnet_id      = aws_subnet.day2_mayur_public_subnet.id
  route_table_id = aws_route_table.day2_mayur_rt.id
}

resource "aws_security_group" "day2_mayur_sg" {
  name        = "day2-mayur-sg"
  description = "Allow HTTP access"
  vpc_id      = aws_vpc.day2_mayur_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

module "day2_mayur_ec2" {
  source = "./modules/ec2_instance"

  instance_type      = var.instance_type
  ami_id             = var.web_server_ami
  subnet_id          = aws_subnet.day2_mayur_public_subnet.id
  security_group_ids = [aws_security_group.day2_mayur_sg.id]

  tags = {
    Name = "day2-mayur-webserver"
  }
}
