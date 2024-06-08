# Example of use for the Security Group module

In this example you will create a security group for a web server. Ports are just an example to show you how you can declare multiple ports at once
Remember:

- For TCP Port use protocol "6"
- For UDP Port use protocol "17"
- For ICMP use protocol "1"
- For All traffic use protocol "-1" << BE CAREFUL WITH THIS ONE, you will allow all protocols and all ports for the selected ips or networks.


```hcl
module "sg" {
  source = "git::https://github.com/cdguru/aws_terraform_sg_module.git?ref=v1.0"

  name = "Web server SG"
  
  ingress_map = [
    
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "6"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "6"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      protocol    = "6"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  tags = {
    Service = "web_server"
  }
}
```