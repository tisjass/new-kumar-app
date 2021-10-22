variable "os" {
  type = string
  default = "ami-02e136e904f3da870"
}

variable "hw" {
default = "t2.micro"
}

resource "aws_instance" "myawsserver" {
  ami = var.os
  instance_type = var.hw

  tags = {
    Name = "gagandeep-aws-ec2-instance1"
    Env = "Dev"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}