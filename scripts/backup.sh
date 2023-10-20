#!/bin/bash

# MySQL database details
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database_name"

# Backup directory
BACKUP_DIR="/path/to/backup/directory"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Create a backup file with a timestamp
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-backup-$TIMESTAMP.sql"

# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# Use mysqldump to create the backup
mysqldump --user="$DB_USER" --password="$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

# Check the mysqldump command's exit status
if [ $? -eq 0 ]; then
  echo "Database backup successful. Backup file: $BACKUP_FILE"
else
  echo "Error: Database backup failed."
fi
