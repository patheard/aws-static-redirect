# AWS Static Redirect
Use CloudFront and an S3 static website to redirect requests from one domain to another.  This is useful when you don't control the target domain since it means you don't have to worry about SSL certificate validation errors.

```sh
# Init, plan and apply
cd aws/redirect
terraform init
terraform plan
terraform apply
```
