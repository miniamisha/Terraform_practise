locals {
  instances_count = 2
  instances_tags = [
    {
      Name = "Dev-server"
    },
    { Name = "QA-server" }
  ]
}


resource "aws_instance" "app_server" {
  count           = local.instances_count
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = ["default"]
  tags            = local.instances_tags[count.index]
}
