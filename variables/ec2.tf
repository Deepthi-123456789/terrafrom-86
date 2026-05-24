resource "aws_instance" "terraform" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    instance_type = var.instance_type
    tags =  var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr # internet
  }

  tags = {
    Name = "allow-all"
  }

}