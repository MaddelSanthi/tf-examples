provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "scalr" {
  ami                    = "ami-0abcd1234ef567890"  # Replace with a valid AMI ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-12345678"
  vpc_security_group_ids = ["sg-12345678"]
  key_name               = "my-keypair"
  count                  = 1
}
