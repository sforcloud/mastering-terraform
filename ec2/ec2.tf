# Provisoin ec2 instance of t2.micro in mumbai region 

# Resource ec2 instance 
resource "aws_instance" "web" {
  ami           = var.image
  instance_type = var.size
  subnet_id     = var.subnet

  tags = {
    Name = "Mastering-Terraform"
  }

}

output "public-ip" {
    description = "public ip of ec2 instance"
    value       = "aws_instance.web.public_ip"
}

output "private-ip" {
    description = "public ip of ec2 instance"
    value       = "aws_instance.web.private_ip"
}


resource "aws_vpc" "my_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "192.168.10.0/24"
  availability_zone = var.zone

  tags = {
    Name = "tf-example"
  }
}


