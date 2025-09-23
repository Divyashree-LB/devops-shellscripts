#!/bin/bash

# disk_usage_alert.sh - Monitor disk usage, log alerts, and send notifications

logfile="/tmp/disk_alert.log" > $logfile
email="divyalbdivya123@gmail.com"
Threshold=80 #set Threshold in %


df -h | tail -n +2 | while read line
do
	usage=$(echo $line | awk '{print $5}' | sed 's/%//')
	mountpoint=$(echo $line | awk '{print $6}')

	if [ $usage -gt $Threshold ]; then

	#log usage is high	
	
                echo "$(date): WARNING - $mountpoint is at ${usage}%" | tee -a $logfile

	      # Send mail alert (requires mailutils/postfix installed)

                echo "warning : $mountpoint is at $usage%" | mail -s "Disk alert on $(hostname)"  $email
              
	      #  send wall alerts visible to all logged in users
              #  wall "warning : $mountpoint is at $usage%" | tee -a $logfile


	else

	#log normal usage
	        echo "$(date): $mountpoint is at $usage%" >> $logfile 


	fi

done
