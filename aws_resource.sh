#!/bin/bash

###########
#Author: Ashok
#Date: 11th may
#
#Version: v1
#
#This script will report the aws resource usage
###########

#AWS s3, Ec2, Lambda, IAM Users

set -x
#listing the s3 buckets
echo "print list of s3"
aws s3 ls > resourceTrack.txt

#list ec2 instances
echo "print list of ec2"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' > resourceTrack.txt

#list lambda
echo "print list of lambda"
aws lambda list-functions > resourceTrack.txt

#list IAM users
echo "print list of IAM users"
aws iam list-users > resourceTrack.txt