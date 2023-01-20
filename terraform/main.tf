/*
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main_vpc"
  }
}

resource "aws_subnet" "main_public_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "main_public_1"
  }
}

resource "aws_subnet" "main_public_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "main_public_2"
  }
}

resource "aws_subnet" "main_public_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "main_public_3"
  }
}

resource "aws_subnet" "main_private_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.64.0/24"

  tags = {
    Name = "main_private_1"
  }
}

resource "aws_subnet" "main_private_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.65.0/24"

  tags = {
    Name = "main_private_2"
  }
}

resource "aws_subnet" "main_private_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.66.0/24"

  tags = {
    Name = "main_private_3"
  }
}

resource "aws_subnet" "main_database_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.128.0/24"

  tags = {
    Name = "main_database_1"
  }
}

resource "aws_subnet" "main_database_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.129.0/24"

  tags = {
    Name = "main_database_2"
  }
}

resource "aws_subnet" "main_database_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.130.0/24"

  tags = {
    Name = "main_database_3"
  }
}
*/

resource "aws_security_group" "sko_compliance_violation" {
  vpc_id      = module.vpc.vpc_id
  name = "sko_compliance_violation"
  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sko_compliance_violation"
  }
}