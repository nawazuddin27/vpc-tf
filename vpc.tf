resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
count = 4
  tags = {
    Name = "main"
  }
}