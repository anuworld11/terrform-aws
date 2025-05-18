
resource "aws_instance" "myfirstinstance" {
  ami           = var.ami # Amazon Linux 2 AMI
  instance_type = "t2.nano"
tags = {
    Name = "MyFirstInstance"
}
}
resource "random_id" "rand" {
  byte_length = 8
}

resource "aws_s3_bucket" "mytetsbucket" {
  bucket = "my-test-${random_id.rand.hex}" # Replace with a unique bucket name
  region = "eu-west-1"

  tags = {
    Name = "MyTestBucket"
  }

}
/*resource "aws_s3_object" "mydata" {
  bucket = aws_s3_bucket.mytetsbucket.id
  key    = "data.txt"
  source = "mydata.txt"
  region = "eu-west-1"

}*/

