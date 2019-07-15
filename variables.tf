variable "region" {
  description = "AWS Region"
}

variable "eip" {
  default = ""
  description = "Elastic IP"
}

variable "ec2_id" {
  default = ""
  description = "EC2 id"
}

variable "associate_by" {
  default = "ec2"
  description = "ec2 or eni"
}

variable "eni_id" {
  default = ""
  description = "Eni id"
}