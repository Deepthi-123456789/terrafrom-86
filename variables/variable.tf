variable ami_id {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable instance_type {
    type = string
    default = "t2.micro"
}

variable ec2_tags {
    type = map 
    default = {
        Name = "terraform-demo"
    }
}

variable sg_name {
    type = string
    default = "allow-all"
}

variable cidr {
    type = list 
    default = ["0.0.0.0/0"]
}