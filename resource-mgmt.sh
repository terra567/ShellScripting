#! /bin/bash

############################
# Author: Swasti
# Date: May 26 2025
#
# Version: V1
# This Script is going to check usage of AWS resources
#
#############################

set -x

# List S3 Buckets:
echo "Print list of S3 buckets" > resourceTracker
aws s3 ls >> resourceTracker

# List EC2 instances:
echo "Print list of EC2 instances" >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# List Lambda function:
echo "Print list of Lambda function" >> resourceTracker
aws lambda list-functions | jq '.Functions[].FunctionName' >> resourceTracker

# List IAM users:
echo "Print list if IAM users" >> resourceTracker
aws iam list-users | jq '.Users[].UserName' >> resourceTracker
