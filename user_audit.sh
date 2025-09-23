#!/bin/bash

# user_audit.sh - Monitor logged-in users

logfile="/tmp/user_audit.log"
threshold=3

echo "===== User Audit ====="
echo "Date: $(date)" | tee -a $logfile

current_users=$(who | wc -l)

if [ "$current_users" -gt "$threshold" ]; then
    echo "High number of users logged in: $current_users" | tee -a $logfile
else
    echo "Users logged in: $current_users" | tee -a $logfile
fi

