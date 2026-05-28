locals {
    instance_type = "t3.micro"
    Name =  "${var.ec2_tags_Name}.${var.tag_env}"
    #ami_id = "data.aws_ami.joindevops.id"
# }
}