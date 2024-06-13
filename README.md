# AWS Terraform Security Group Module

This module allows you to create an AWS Security Group very easily. I have added a trick to automatically set the Name of the SG.

## Usage

You can always check [variables.tf](variables.tf) for more details and understanding. Also, you can check this practical [example](examples/example1.md) 😃

You can visit this [link](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-security-groups.html) to know more about Security Groups.

```hcl
module "sg" {
  source      = <directory path || git tag>
  
  name        = <string>
  
  vpc_id      = <string>

  ingress_map = <list of objects>

  [OPTIONAL]
  egress_map  = <list of objects>

  [OPTIONAL]
  tags        = {
    
    key = "value"

  }
}
```