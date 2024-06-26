# # Aws security group
# resource "aws_security_group" "ec2_security_group" {
#   name        = "security_group"
#   description = "allow access on port 8080 and 22"
#   vpc_id      = "vpc-0e511b44ed2a90b2b"

#   # allow access on port 8080
#   // Consolidated ingress block
#   ingress = [{
#     description      = "HTTP proxy access"
#     from_port        = 8080
#     to_port          = 8080
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     security_groups  = []
#     self             = false
#     },
#     # allow access on port 22
#     {
#       description      = "ssh access"
#       from_port        = 22
#       to_port          = 22
#       protocol         = "tcp"
#       cidr_blocks      = ["0.0.0.0/0"]
#       ipv6_cidr_blocks = []
#       prefix_list_ids  = []
#       security_groups  = []
#       self             = false
#   }]

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }
# }

