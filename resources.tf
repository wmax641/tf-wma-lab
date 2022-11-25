# Create a s3 bucket. 
# The bucket name will equal to what 'base_name' is set in variables.tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.base_name
}

# Create an s3 file object. The source of the file will be from your local directory
resource "aws_s3_object" "datafile0_csv" {
  bucket = var.base_name
  key    = "datafile0.csv"
  source = "./datafiles/datafile0.csv"

  etag = filemd5("./datafiles/datafile0.csv")
}


# Uncomment these for more resources

# Create another s3 file object from a different source file
#resource "aws_s3_object" "datafile1_csv" {
#  bucket = var.base_name
#  key    = "datafile1.csv"
#  source = "./datafiles/datafile1.csv"
#
#  etag = filemd5("./datafiles/datafile1.csv")
#}

#resource "aws_s3_bucket_acl" "bucket_acl" {
#  acl    = "private"
#  bucket = aws_s3_bucket.bucket.id
#}
