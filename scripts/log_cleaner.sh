#!/bin/bash

# log_cleaner.sh - Delete log files older than 7 days

LOG_DIR="/var/log/myapp"
DAYS=7

echo "===== Log Cleaner ====="
echo "Cleaning log files in $LOG_DIR older than $DAYS days..."
echo

# Check if directory exists
if [ -d "$LOG_DIR" ]; then
    find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -print -delete
    echo "Cleanup completed "
else
    echo "Directory $LOG_DIR does not exist "
fi

