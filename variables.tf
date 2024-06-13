variable "name" {
  description = "The name of the Security Group"
  type        = string
}

variable "vpc_id" {
  type = string
  description = "The id of the VPC to associate this sg"
}

variable "ingress_map" {
  description = "A map used to define ports and ips you want to allow to ingress to your resource"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_map" {
  description = "A map used to define ports and ips you want to allow to egress from you resource"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [ {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  } ]
}

variable "tags" {
  description = "Tags to apply to the Security Group"
  type        = map(string)
  default     = {}
}