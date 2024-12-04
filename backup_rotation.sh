#!/bin/bash

# author: sagar rawat  
# team_name:cloud and devops
# version: 0.0.1


# script for backup the server and rotation the backeups 


source_dir="/home/ubuntu/shell_script"   # Path of the folder to be backed up
destination_dir="/home/ubuntu/backup"   # Destination path for the zip file
zip_name="_backup_$(date +'%Y-%m-%d_%H-%M-%S').zip"  # Zip file name with timestamp

s3_bucket_name=backupserver24



# function of the backup 
backup (){
       
    zip -r "$destination_dir/$zip_name" "$source_dir" >/dev/null

    if [ $? -eq 0 ]; then
        echo "Zip file created successfully: $destination_dir/$zip_name" 
    else
        echo "Failed to create zip file!"
        exit 1
fi

       
}


upload_to_s3() {
    echo "Uploading $zip_name to S3 bucket: $s3_bucket_name..."
    aws s3 cp "$destination_dir/$zip_name" "s3://$s3_bucket_name/"

    if [ $? -eq 0 ]; then
        echo "Backup uploaded to S3 successfully."
    else
        echo "Failed to upload backup to S3!"
        exit 1
    fi
}






#function call
backup
upload_to_s3