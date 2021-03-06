resource "aws_subnet" "main" {
  depends_on            = [aws_vpc_ipv4_cidr_block_association.addon]
  count                 = length(var.SUBNETS)
  vpc_id                = aws_vpc.main.id
  cidr_block            = element(var.SUBNETS,count.index)
  availability_zone     = element(var.AZS, count.index)

  tags = {
    Name                = "subnet-${count.index}"
  }
}