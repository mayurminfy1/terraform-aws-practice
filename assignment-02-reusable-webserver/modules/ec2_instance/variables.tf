variable "instance_type" {}
variable "ami_id" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
variable "tags" {
  type = map(string)
}
