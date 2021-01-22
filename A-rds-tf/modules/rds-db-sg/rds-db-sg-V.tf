variable "ingr-sg" {
  type = list(number)
  description = "ingress ports"
  default = [22,443,3306,3389]
}
variable "egr-sg" {
  type = list(number)
  description = "egress ports"
  default = [0]
}
variable "sg-vpc" {
  type = string
  description = "vpc association"
}
variable "ingr-cidrs" {
  type = list(string)
  description = "List of authorised cidr blocks"
  default = ["0.0.0.0/0"]
}