resource "aws_vpc" "tf_Avpc" {
  cidr_block = var.vpcA-cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "tf-Avpc"
  }
}
resource "aws_internet_gateway" "tf_Avpc-igw" {
  vpc_id = aws_vpc.tf_Avpc.id
  tags = {
    Name = "tf_Avpc-igw"
  }
}
resource "aws_subnet" "tf_SN-APr" {
  vpc_id            = aws_vpc.tf_Avpc.id
  cidr_block        = cidrsubnet(var.vpcA-cidr_block, 8 , 0)
  availability_zone = "${var.vpc-region}a"

  tags = {
    Name = "tf_SN-APr"
  }
}
resource "aws_route_table" "rt-tf_SN-APr" {
  vpc_id = aws_vpc.tf_Avpc.id
}
resource "aws_route_table_association" "rta-tf_SN-APr" {
  route_table_id = aws_route_table.rt-tf_SN-APr.id
  subnet_id = aws_subnet.tf_SN-APr.id
}
resource "aws_subnet" "tf_SN-BPu" {
  vpc_id            = aws_vpc.tf_Avpc.id
  cidr_block        = cidrsubnet(var.vpcA-cidr_block, 8 , 1,)
  availability_zone = "${var.vpc-region}b"

  tags = {
    Name = "tf_SN-BPu"
  }
}
resource "aws_route_table" "rt-tf_SN-BPu" {
  vpc_id = aws_vpc.tf_Avpc.id
}
resource "aws_route_table_association" "rta-tf_SN-APu" {
  route_table_id = aws_route_table.rt-tf_SN-BPu.id
  subnet_id = aws_subnet.tf_SN-BPu.id
}
resource "aws_route" "r-tf_SN-Bpu" {
  route_table_id = aws_route_table.rt-tf_SN-BPu.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.tf_Avpc-igw.id
}