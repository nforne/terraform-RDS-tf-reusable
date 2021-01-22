output "tf-Avpc" {
  value = aws_vpc.tf_Avpc
}
output "tf_SN-APr" {
  value = aws_subnet.tf_SN-APr
}
output "tf_SN-BPu" {
  value = aws_subnet.tf_SN-BPu
}
output "rds-db-sng" {
  value = aws_db_subnet_group.rds-db-sng
}
output "rds-db-pg" {
  value = aws_db_parameter_group.rds-db-pg
}