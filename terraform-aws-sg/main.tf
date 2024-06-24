/*provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "scalr" {
  ami                    = "i-05a1467996ef9db97"  # Replace with a valid AMI ID
  instance_type          = "t2.micro"
  subnet_id              = "subnet-12345678"
  vpc_security_group_ids = ["sg-12345678"]
  key_name               = "my-keypair"
  count                  = 1
}*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  //profile = "jack.roper"
}

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = "JacksBlogExample"
  }
}
