variable "prov-region" {
  type = string
  description = "profile region"
  default = "us-east-1"
}
variable "vpc-cidr" {
  type = string
  description = "vpc cidr block"
}
variable "sg-ingr-pts" {
  type = list(number)
  description = "List of Security group ingress ports"
}
variable "sg-ingr-cidr" {
  type = list(string)
  description = "List of Security group Permitted network cidr blocks"
}

variable "r-cnt" {
  type = number
  description = "# of resources and count"
  default = 2
}
variable "db-pw" {
  type = string
  description = "master pw for db"
}
variable "db-un" {
  type = string
  description = "master un for db"
}