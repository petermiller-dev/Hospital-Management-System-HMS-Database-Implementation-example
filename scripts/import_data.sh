#!/bin/bash

# MySQL database details
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database_name"

# Path to the SQL data file to import
SQL_DATA_FILE="/path/to/data.sql"

# Check if the data file exists
if [ ! -f "$SQL_DATA_FILE" ]; then
  echo "Error: Data file not found at $SQL_DATA_FILE"
  exit 1
fi

# Import the data into the database
mysql --user="$DB_USER" --password="$DB_PASSWORD" "$DB_NAME" < "$SQL_DATA_FILE"

# Check the import command's exit status
if [ $? -eq 0 ]; then
  echo "Data import successful."
else
  echo "Error: Data import failed."
fi
