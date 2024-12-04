#!/bin/bash

AWS_ACCESS_KEY_ID= < enter your aws_access_key_id >
AWS_SECRET_ACCESS_KEY= < enter your secret_access_key_id >
AWS_REGION="ap-south-1"
AWS_OUTPUT_FORMAT="json"

# Function to configure AWS CLI
configure_aws_cli() {
    echo "Configuring AWS CLI with hardcoded values..."

    aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
    aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"
    aws configure set region "$AWS_REGION"
    aws configure set output "$AWS_OUTPUT_FORMAT"

    echo "AWS CLI has been configured successfully!"
}

configure_aws_cli