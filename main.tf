locals {
  name_tag = {Name = "${var.name}"}
  tags = merge(local.name_tag, var.tags)
}

resource "aws_security_group" "this" {
 
  name = var.name

  dynamic "ingress" {
    for_each = var.ingress_map
    content {
      from_port = ingress.value["from_port"]
      to_port = ingress.value["to_port"]
      protocol = ingress.value["protocol"]
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  dynamic "egress" {
    for_each = var.egress_map
    content {
      from_port = egress.value["from_port"]
      to_port = egress.value["to_port"]
      protocol = egress.value["protocol"]
      cidr_blocks = egress.value["cidr_blocks"]
    }
  }

  tags = local.tags
}