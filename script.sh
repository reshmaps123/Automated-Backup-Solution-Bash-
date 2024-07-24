#!/bin/bash

# Variables
SOURCE_DIR="/path/to/source"
DEST_DIR="/path/to/destination"
LOG_FILE="/var/log/backup.log"
DATE=$(date +'%Y-%m-%d %H:%M:%S')

# Function to perform backup
perform_backup() {
    rsync -avh --delete $SOURCE_DIR $DEST_DIR
    if [ $? -eq 0 ]; then
        echo "$DATE - Backup successful" >> $LOG_FILE
    else
        echo "$DATE - Backup failed" >> $LOG_FILE
    fi
}

# Run backup
perform_backup
