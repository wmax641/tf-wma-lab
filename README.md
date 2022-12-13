## tf-wma-lab

Basic terraform project 

### Build Instructions

Initialise Terraform for the first time
```
terraform init
```

Make your own changes to the code. You must change the `project_name` variable in `main.tf`

Have AWS appropriate creds to target account in ~/.aws/credentials

Then build:

```
make fmt #(optional)

make validate

make plan

make apply
```

### Required Software
```
GNU Make (make)
terraform
```

If you can't install GNU Make, you can manually run the terraform commands by copying the corresponding command from the Makefile itself

### Tasks

1. Make sure project can be deployed via Terraform in the method described above. Remember to change the `project_name` variable to a sensible hostname-like string. 

2. Remove hardcoded references in the `resource "aws_s3_object"` block to the variable `var.project_name`. Instead reference the bucket_name attribute of `resource "aws_s3_bucket" "my_bucket". 

3. Using the commented code in `main.tf`, deploy the other .csv files into the same S3 bucket

4. Research online on how Terraform's `for each` operator works. Then deploy all the .csv files into the S3 bucket with only 1 usage of the `resource "aws_s3_object"` block.

