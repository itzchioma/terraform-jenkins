# Create Ec2 instance
resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("userdata.tpl")
  security_groups = ["sg-049596a95ad515c17"]
  subnet_id = "subnet-0fc7476bed2680b57"

  tags = {
    Name = var.name_tag,
  }

}