resource "aws_instance" "my-ec2-instance" {
  ami           = "ami-0cd7ad8676931d727"
  instance_type = "t2.micro"

  tags = {
    Name        = "Ec2-new"
    Environment = "dev"
  }
}

resource "aws_s3_bucket" "my-bucket11" {
  bucket = "my-bucket-batch2"

  tags = {
    Name        = "mybucket-batch2"
    Environment = "dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Example-vpc"
  }
}

resource "aws_ebs_volume" "my-ebs-volume" {
  availability_zone = "ap-northeast-1a"
  size              = 10

  tags = {
    Name = "ebs-volume"
  }
}
