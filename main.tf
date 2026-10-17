# resource "aws_s3_bucket" "my_bucket11" {
#     count = var.bucket_count
#     bucket = "${var.bucket1}-${count.index}"
#     tags = {
#         Name = var.environment
#     }
# }

# resource "aws_s3_bucket" "mybucket_22" {
#     for_each = toset([for i in range(var.bucket_count) : "${var.bucket2}-${i}"]) 
#     bucket = var.bucket2 
#              OR
#   for_each = var.bucket2
#   bucket = each.value
#     tags = {
#         Name = var.environment
#     }
# }


# resource "aws_instance" "my_instance" {
#     ami           = data.aws_ami.ubuntu.id
#     instance_type = var.instance_type
# }

module "ec2_instance" {
    source = "./ec2"
    instance_type = var.instance_type
}

module "s3_bucket" {
    source = "./s3"
    bucket1 = var.bucket1
    #bucket2 = var.bucket2
    environment = var.environment
    bucket_count = var.bucket_count
}