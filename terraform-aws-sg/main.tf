
module "sg" {
  source  = "./terraform-aws-sg"

  region         = "us-east-1"  // Example value, replace with appropriate region
  ami            = "ami-12345678"
  instance_type  = "t2.micro"
  subnet         = "subnet-12345678"
  sg             = ["sg-12345678"]
  key            = "my-keypair"
  instance_count = 1
  // Provide other required variables
}

