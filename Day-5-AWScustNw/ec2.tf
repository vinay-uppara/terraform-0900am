#Creation of server
resource "aws_instance" "prod" {
ami = "ami-0b0a3a2350a9877be"
instance_type = "t2.micro"
key_name = "devsydney"
subnet_id = aws_subnet.prod.id
vpc_security_group_ids = [aws_security_group.allow_tls.id]
tags = {
  Name = "prod-ec2"
} 
}