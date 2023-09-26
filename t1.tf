provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "my_instance" {
    ami = "ami-053b0d53c279acc90 "
    instance_type = "t2.micro"
    key_name = "main"
    tags = {
        name = "myinstance"
        env = "devops"
    }
    vpc_security_group_ids = ["sg-08e3b62ba55c6092d"]
}