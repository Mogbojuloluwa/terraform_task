variable "region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "vpc_block" {
  description = "cidr block and name tag for the vpc"
  type = object({
    cidr_block = string
    name = string
  })
}

variable "subnet_blocks" {
  description = "cidr, availability zone and name tag for the subnets"
  type = map(object({
    cidr = string
    az = string
  }))
}

variable "igw" {
  description = "internet gateway name"
  type = string
}

variable "rtb" {
  description = "cidr block and name tag for route table"
  type = object({
    cidr_block = string
    name = string
  })
}

variable "sg" {
  description = "Application load balancer and instances security group name"
  type = list(string)
}

variable "inbound_ports" {
  description = "Security groups inbound ports"
  type = list(number)
  default = [80,443]
}
variable "ssh_key" {
  description = "SSH Key name"
  type = string
}

variable "lb_name" {
  description = "Load balancer name"
  type = string
}

variable "tg_name" {
  description = "Target group name"
  type = string
}

variable "domain_names" {
  description = "Describes the domain and subdomain names"
  type = map(string)
}

variable "namecheap_api_username" {
  description = "Namecheap APIUsername"
  type = string
}
variable "namecheap_api_key" {
  description = "Namecheap APIKey"
  type = string
}