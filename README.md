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

1. Make sure project can at least be partially deployed via Terraform in the method described above. Remember to change the `project_name` variable to a sensible hostname-like string. 

There's a good chance that this project will not build completely the first time with the below error. 
```
Error: uploading object to S3 bucket (my_project_name): NoSuchBucket: The specified bucket does not exist
```

In that case, run `make plan` and `make apply` again.

Observe results in AWS S3 console

Destroy the resources via `make destroy`. Similar to above, may need to run this twice.

2. Remove hardcoded references in the `resource "aws_s3_object"` block to the variable `var.project_name`. Instead reference the bucket_name attribute of `resource "aws_s3_bucket" "my_bucket"`

Doing so will allow Terraform to know that it needs to create the bucket and make sure it exists first, before referencing it.

3. Using the commented code in `main.tf`, deploy the other .csv files into the same S3 bucket

4. Research online on how Terraform's `for each` operator works. Then deploy all the .csv files into the S3 bucket with only 1 usage of the `resource "aws_s3_object"` block.

