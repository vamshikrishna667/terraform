# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVN5PUXV6O5FXPT5S"
  secret_key = "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"
}

# Resource - master
resource "aws_instance" "master" {
  ami                    = "ami-02358d9f5245918a3"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-09c854e2cb7191266"
  key_name               = "vamshi"
  private_ip             = "192.168.0.133"
  user_data              = file("install.sh")
  vpc_security_group_ids = ["sg-076b303dfcfcee1c7"]
  tags = {
    Name = "master"
  }
}


# Resource - node1
resource "aws_instance" "node1" {
  ami                    = "ami-02358d9f5245918a3"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-09c854e2cb7191266"
  key_name               = "vamshi"
  private_ip             = "192.168.0.138"
  vpc_security_group_ids = ["sg-076b303dfcfcee1c7"]
  tags = {
    Name = "node1"
  }
}


# Resource - node2
resource "aws_instance" "node2" {
  ami                    = "ami-02358d9f5245918a3"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-09c854e2cb7191266"
  key_name               = "vamshi"
  private_ip             = "192.168.0.134"
  vpc_security_group_ids = ["sg-076b303dfcfcee1c7"]
  tags = {
    Name = "node2"
  }
}
