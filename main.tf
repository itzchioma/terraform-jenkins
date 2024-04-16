# Create Ec2 instance
resource "aws_instance" "public_instance" {
 ami           = var.ami
 instance_type = var.instance_type
 key_name = var.key_name
 user_data = file("userdata.tpl")

 tags = {
   Name = var.name_tag,
 }

}