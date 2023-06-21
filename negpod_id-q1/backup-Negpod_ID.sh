#!/usr/bin/env bash
#script to back up the directory created in previouse tasks
# Remote server details
remote_host="a0dfc11ba139.a982e858.alu-cod.online"
remote_username="a0dfc11ba139"
remote_password="899c79fc532cd0591af1"
remote_location="/home/sftp-student/03033/summative"

# Create the backup script name
backup_script_name="backup-$(date +'%m%d-%H%M%S')-Negpod_ID.sh"

# Create the backup script with the rsync command
echo "#!/bin/bash" > "$backup_script_name"
echo "rsync -avz -e 'sshpass -p \"$remote_password\" ssh -o StrictHostKeyChecking=no' ./negpod_id-q1/ $remote_username@$remote_host:$remote_location" >> "$backup_script_name"
chmod +x "$backup_script_name"

echo "Backup script $backup_script_name created successfully."

