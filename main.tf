provider "aws" {
region= "us-east-1"
access_key= "# your IAM role access key"
secret_key= "# your IAM role secret key"
}

resource "aws_instance" "slave1" {
ami= "ami-052efd3df9dad4825"
instance_type= "t2.micro"
key_name= "# your keypair"
security_groups= ["# your security group name"]
tags= {
Name= "slave1"
}
}

resource "aws_instance" "slave2"{
ami = "ami-052efd3df9dad4825"
instance_type="t2.micro"
key_name= "# your keypair"
security_groups = ["# your security group name"]
 tags = {
 Name = "slave2"
 }
}
