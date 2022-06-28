provider "aws" {
region= "us-east-1"
access_key= "AKIA4DPPPJ2UVK6DUXKC"
secret_key= "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"
}

resource "aws_instance" "slave1" {
ami= "ami-052efd3df9dad4825"
instance_type= "t2.micro"
key_name= "RedHatKP"
security_groups= ["launch-wizard-1"]
tags= {
Name= "slave1"
}
}

resource "aws_instance" "slave2"{
ami = "ami-052efd3df9dad4825"
instance_type="t2.micro"
key_name= "RedHatKP"
security_groups = ["launch-wizard-1"]
 tags = {
 Name = "slave2"
 }
}
