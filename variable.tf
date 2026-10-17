variable bucket1 {
  description = "The name of the first S3 bucket"
  type        = string
}

# variable bucket2 {
#   description = "The name of the second S3 bucket"
#   type        = map(string)
# }

variable instance_type {
  description = "The type of EC2 instance"
  type        = string
}

variable environment {
  description = "The environment for the resources"
  type        = string
}

variable bucket_count {
  description = "The number of S3 buckets to create"
  type        = number
  default = 2
}