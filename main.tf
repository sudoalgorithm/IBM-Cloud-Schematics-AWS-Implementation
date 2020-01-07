// Provider specific configs
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

// EC2 Instance Resource for Module
resource "aws_instance" "ec2-instance-example" {
	ami = "ami-83a713e0"
	instance_type = "t2.micro"
	tags {
		Name = "sudoalgorithm"
	}
}
