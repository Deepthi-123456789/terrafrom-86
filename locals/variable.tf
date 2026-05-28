variable ami_id {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable instance_type {
    type = string
    default = "t2.micro"
}

variable ec2_tags_Name {
    default = "roboshop-terraform"
    
}

variable tag_env {
    default = "Dev"
    
}

# variable comman_tag {

#     default = "${var.ec2_tags_Name}.${var.tag_env}"
# }

variable sg_name {
    type = string
    default = "allow-all"
}

variable cidr {
    type = list 
    default = ["0.0.0.0/0"]
}