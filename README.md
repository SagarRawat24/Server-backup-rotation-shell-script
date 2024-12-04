
# Server Backup to S3 with Lifecycle Management

This repository contains a shell script designed to automate the process of backing up a server's data and uploading the backup to an Amazon S3 bucket. The backup process runs daily at midnight using cron jobs. Additionally, an S3 lifecycle policy is enabled to automatically delete backups older than 5 days, ensuring efficient storage management.

## Features
+ Creates a compressed backup of specified directories/files on the server.
+ Uploads the backup to a specified S3 bucket using AWS CLI.
+ Scheduled execution at 12.00 pm every day using cron jobs.
+ Configures S3 lifecycle policies to automatically delete backups older than 5 days.

## Prerequsites

1. AWS CLI Installed: The script uses AWS CLI to interact with S3. For installation use this script [awscli_install.sh](https://github.com/SagarRawat24/Server-backup-rotation-shell-script/blob/main/awscli_install.sh)  and run this comand 
```
bash awscli_install.sh
```
2. Configure the AWS credentials use this file [aws_configure.sh](https://github.com/SagarRawat24/Server-backup-rotation-shell-script/blob/main/aws_configure.sh) and run this command on Bash
```
bash aws_configure.sh
```
3. if you want to run manually  use this command  
```
bash backup_rotation.sh
```

4. S3 Bucket: Create an S3 bucket where backups will be stored.

5. Permissions: Ensure the IAM role/user has the following permissions:
+ s3:PutObject
+ s3:GetObject
+ s3:DeleteObject
+ s3:PutLifecycleConfiguration
6. Bash Shell: The script is written in Bash and requires a Linux/Unix environment.
