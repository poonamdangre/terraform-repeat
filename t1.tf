terraform {
    backend "s3" {
        bucket = "terraform12345"
        key = "terraform.tfstate"
    }
}
provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "my_instance" {
    ami = "ami-041feb57c611358bd"
    instance_type = "t2.micro"
    key_name = "id_rsa"
    tags = {
        name = "myinstance"
        env = "devops"
    }
    vpc_security_group_ids = ["sg-03c4a3fb1b4f09ca8"]
}