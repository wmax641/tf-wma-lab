# Create a s3 bucket. 
# The bucket name will equal to what 'base_name' is set in variables.tf
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.project_name

}

# Create an s3 file object. The source of the file will be from your local directory
resource "aws_s3_object" "datafile0_csv" {
  bucket = var.project_name
  # Task #2, change to reference the "aws_s3_bucket" object, instead of "var.project_name"

  key    = "datafile0.csv"
  source = "./datafiles/datafile0.csv"

  etag = filemd5("./datafiles/datafile0.csv")
}


#  Task #3, uncomment these to deploy more .csv resources
#resource "aws_s3_object" "datafile1_csv" {
#  bucket = <CHANGE ME>
#  key    = "datafile1.csv"
#  source = "./datafiles/datafile1.csv"
#
#  etag = filemd5("./datafiles/datafile1.csv")
#}
