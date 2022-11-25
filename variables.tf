variable "name" {
    type = string
}
variable "region" {
    type = string
    default = "us-east-1"
}
variable "vpc_cidr" {
    type = string
}
variable "subnet_cidr" {
    type = string
}
variable "instance_type" {
    type = string
}
variable "key_name" {
    type = string
}
variable "ami" {
    type = string
}