providerb "aws" {
    region = "us-east-1"
}
resource "aws_instance" "my_ec2" {
    ami = "ami-03a6eaae9938c858c "
    instance_type = "t2.micro"
    key_name = "main"
    tags = {
        name = "myinstance"
        env = "devops"
    }
    vpc_security_group_id = ["sg-08e3b62ba55c6092d"]
}