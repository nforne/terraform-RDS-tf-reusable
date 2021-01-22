variable "u-name" {
  type = string
  description = "db user name"
}
variable "p-word" {
  type = string
  description = "db password"
}
variable "rds-pg-n" {
  type = string
  description = "parameter group name"
}
variable "db-sg-ids" {
  type = list(string)
  description = "List of db security groups to associate"
}
variable "db-sng-n" {
  type = string
  description = "db subnet group"
}
variable "db-AZ" {
  type = string
  description = "AZ for db"
}
variable "db-i-tag" {
  type = string
  description = "db-i tag"
  default = "rds-db-i"
}