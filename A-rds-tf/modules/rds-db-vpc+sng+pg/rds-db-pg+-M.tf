resource "aws_db_parameter_group" "rds-db-pg" {
  name   = "rds-db-pg"
  family = "mysql8.0"
  description = "rds-db-pg mysql8.0 parameter group"

  parameter {
    name  = "binlog_checksum"
    value = "NONE"
  }
  parameter {
    name  = "binlog_format"
    value = "ROW"
  }
  tags = {
    Name = "rds-db-pg"
  }
}