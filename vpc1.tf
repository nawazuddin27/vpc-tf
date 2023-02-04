 resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
 
  tags = {
    Name = "vpc "
  }
}
resource "aws_subnet" "sub" {
    count = 4
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Name = "sub-${count.index}"
  }
}


