provider "aws" {
    region = "${var.region}"
    shared_credentials_file = "${var.shared_credentials_file}"
    version = "~> 2.61"
}

data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["137112412989"] # Amazon

  filter {
    name = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }

  filter {
    name = "owner-alias"

    values = [
      "amazon",
    ]
  }
}

resource "aws_instance" "UdacityT2" {
    count = 4
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"
    vpc_security_group_ids=["sg-0d43100e74e9df6ba"]
    subnet_id="subnet-0cf6a5649c73bacd3"
    tags = {
        Name = "Udacity T2 - ${count.index}"
    }
    
}

resource "aws_instance" "UdacityM4" {
    count = 2
    ami = data.aws_ami.amazon_linux.id
    instance_type = "m4.large"
    vpc_security_group_ids=["sg-0d43100e74e9df6ba"]
    subnet_id="subnet-0cf6a5649c73bacd3"
    tags = {
        Name = "Udacity M4 - ${count.index}"
    }
}