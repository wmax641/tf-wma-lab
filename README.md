## tf-wma-lab

Basic terraform project to practice on

### Build Instructions

Initialise Terraform for the first time
```
terraform init
```

Make your own changes to the code

Optionally validate code and fix formatting (fmtfix, validate)

Then build (plan + apply)

```
make fmtfix

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
