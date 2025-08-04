resource "aws_s3_bucket" "my_bucket" {
  bucket = "bbs1"


}

resource "aws_s3_bucket_object" "object" {
  bucket = "bbs1"
  key    = "instance.tf"
  source = "${path.module}/instance.tf"
  etag   = "${filemd5("${path.module}/instance.tf")}"
}

