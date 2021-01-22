variable "vpcA-cidr_block" {
  type = string
  description = "NW-A"
  default = "10.0.0.0/16"
}
variable "vpc-region" {
  type = string
  description = "Profile Region"
  default = "us-east-1"
}
variable "db-sn-ids" {
  type = list(string)
  description = "list of subnet ids for db-sng"
}