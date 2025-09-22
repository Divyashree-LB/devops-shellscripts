#!/bin/bash

# service_checker.sh - Check if essential services are running

services=("nginx" "docker" "mysql")

echo "===== Service Status Check ====="
echo "Date: $(date)"
echo

for service in "${services[@]}"
do
    if systemctl is-active --quiet $service; then
        echo "$service is running "
    else
        echo "$service is NOT running "
    fi
done

