variable "instances_number" {
    type = number
    description = "how many resources wants to create"
}

variable "region" {
    type = string
    description = "region selection"
}

variable "OS_recent_version" {
    type = bool
    default = true
}

data "aws_ami" "RHEL" {
    most_recent = var.OS_recent_version
    filter {
      name = "name"
      value = ["rhel Linux 8 HVM EBS SSD *"]
    }
}

variable "ami" {
    type = "map"
    default = {
        "us-east-2" = "data.aws_ami.RHEL.id"
        "us-east-1" = "data.aws_ami.RHEL.id"
    }
}

variable "My_instance_type" {
    type = string
    default = "t2.micro"
    description = "My instance type"
}
