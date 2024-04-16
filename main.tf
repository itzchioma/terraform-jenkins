# Create Ec2 instance
resource "aws_instance" "public_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = file("userdata.tpl")
  vpc_security_group_ids = ["aws_security_group.ec2_security_group.id"]

  tags = {
    Name = var.name_tag,
  }

}