#Variables file for the endpoint creation automation

variable "region"{
  description = "The region where you want to create the resources in."
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC you want to create the endpoints in."
  type        = string
}

variable "endpoints" {
  description = "List of VPC endpoint to be created."
  type        = list(object({
    name    = string
    service = string
  }))
}

variable "subnet_id" {
  description = "ID of the subnet for the VPC endpoint."
  type        = string
}

variable "security_group_id" {
  description = "ID of the security group for the VPC endpoint."
  type        = string
}

variable "creator_initials" {
  description = "Initials of the person creating the resources."
  type        = string
}

variable "route_table_id" {
  description = "Route Table ID for the VPC Gateway Endpoint."
  type        = string
}