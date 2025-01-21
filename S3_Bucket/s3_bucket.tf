#========== Providers ==========#

provider "aws" {
    region     = local.cloud_options.region
    access_key = var.access_key
    secret_key = var.secret_key
    ec2_metadata_service_endpoint_mode = "IPv4"
}

#========== Variables ==========#

variable "region" {}
variable "access_key" {}
variable "secret_key" {}

#========== S3-Bucket ==========#

resource "aws_s3_bucket" "s3bucket" {
    bucket = local.instance_options.name
    tags = merge(
        local.default_tags,
        {
            Terraform = "True"
        }
    )
}

output "bucket_name" {
    value = aws_s3_bucket.s3bucket.bucket
}

output "bucket_arn" {
    value = aws_s3_bucket.s3bucket.arn
}

output "bucket_id" {
    value = aws_s3_bucket.s3bucket.id
}