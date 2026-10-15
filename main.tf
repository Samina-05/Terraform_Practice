provider "aws" {
    region = "us-west-2"
}

resource "aws_s3_bucket" "my_bucket11" {
    bucket = "ss-1234567"
    tags = {
        Name = "my_bucket44"
    }
}

resource "aws_s3_bucket" "mybucket_22" {
    bucket = "saminademo12345"
    tags = {
        Name = "mybucket_55"
    }
}


resource "aws_instance" "my_instance" {
    ami           = "ami-02167eae61967e403"
    instance_type = "t3.micro"
}