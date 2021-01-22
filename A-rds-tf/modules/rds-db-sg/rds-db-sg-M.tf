resource "aws_security_group" "A-sg" {
  name = "A-db-sg"
  vpc_id = var.sg-vpc
  dynamic  "ingress" {
    for_each = var.ingr-sg
    iterator = port
  content {
    from_port = port.value
    to_port   = port.value
    protocol  = "tcp"
    cidr_blocks = var.ingr-cidrs
  }
}
  dynamic "egress" {
    for_each = var.egr-sg
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  tags = {
    Name = "A-db-sg"
  }
}
##Note: if you do not have EC2 Classic in your account, you'll not be able to leverage this: aws_db_security_group
resource "aws_db_security_group" "db-sg" {
  name = "rds-sg"
  ingress {
   security_group_id = aws_security_group.A-sg.id
  }
}