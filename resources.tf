# Create a s3 bucket. 
# The bucket name will equal to what 'base_name' is set in variables.tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.project_name
}

resource "aws_s3_object" "datafiles" {
  for_each = fileset("datafiles/", "*.{csv,md5}")

  bucket = aws_s3_bucket.my_bucket.id
  key    = each.value
  source = "datafiles/${each.value}"
  etag   = filemd5("datafiles/${each.value}")
}
