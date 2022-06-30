Terraform Lab
---------------------

This repo contains an Infrastructure configuration that can be used as a Lab environment, the infrastructure will be deployed on AWS. 

###### **File Structure**

**entry.tf**

------

This file contains the modules that will be used in the deployment of the infrastucture, the variables that needs to be passed to the modules have to be declared in this file inside the module block.





###### **backend.tf**

------

This file contains all the providers used by Terraform to deploy the infrastructure (aws provider with the connection info,acces key and secrets,terraform state backends ,3rd party plugins etc..)

###### **variables.tf**

------

This file contains the variables used by Terraform 

###### **output.tf**

------

This file contains the output values that Terraform will print out, the values can come from inside a module like this

```
output "labvm_arn" {
  value = module.Infra.labvm_arn
}
```

In this case the value of the output is extracted from **output.tf** file inside the module **Infra** 



```
output "labvm_arn" {
  value = aws_instance.labvm.arn
}
```



###### **settings.tfvars**

------

This file contains the default settings for the environment



###### **terraform.sh**

------

This bash script launch terraform loading the secrets file **terraform-secrets.tfvars** and other env variables

```
CONF_FILE=settings.tfvars
SECRETS_FILE=secrets/terraform-secrets.tfvars
AWS_CLI_VERSION=$(aws --version 2>&1 | cut -d " " -f1 | cut -d "/" -f2 | cut -d "." -f1)


#cd tenants/$TENANT
AWS_ACCESS_KEY_ID= AWS_SECRET_ACCESS_KEY= terraform $* -var-file=$CONF_FILE -var-file=$SECRETS_FILE
```
