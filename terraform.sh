#!/bin/bash
#WORKDIR=`pwd`
#WHOAMI=`whoami`

#TENANT=$1
#shift 1

CONF_FILE=settings.tfvars
SECRETS_FILE=secrets/terraform-secrets.tfvars
AWS_CLI_VERSION=$(aws --version 2>&1 | cut -d " " -f1 | cut -d "/" -f2 | cut -d "." -f1)


#cd tenants/$TENANT
AWS_ACCESS_KEY_ID= AWS_SECRET_ACCESS_KEY= terraform $* -var-file=$CONF_FILE -var-file=$SECRETS_FILE #-var-file=$SECRETS_SSM_FILE -var-file=$COMMON_SECRETS_FILE -var aws_cli_version=$AWS_CLI_VERSION
#AWS_ACCESS_KEY_ID= AWS_SECRET_ACCESS_KEY= terraform0.13 $* -var-file=$CONF_FILE -var-file=$SECRETS_FILE -var-file=$COMMON_SECRETS_FILE
#cd $WORKDIR
