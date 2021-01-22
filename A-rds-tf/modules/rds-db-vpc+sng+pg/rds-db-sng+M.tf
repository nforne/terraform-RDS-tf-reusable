resource "aws_db_subnet_group" "rds-db-sng" {
  name       = "rds-db-sng"
  subnet_ids = var.db-sn-ids

  tags = {
    Name = "rds-db-sng"
  }
}
