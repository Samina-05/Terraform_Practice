resource "aws_s3_bucket" "my_bucket11" {
    count = var.bucket_count
    bucket = "${var.bucket1}-${count.index}"
    tags = {
        Name = var.environment
    }
}

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