provider "aws" {
  access_key = "hardcodedAccessKey"    # Hardcoded credentials (vulnerability)
  secret_key = "hardcodedSecretKey"    # Hardcoded credentials (vulnerability)
  region     = "us-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
