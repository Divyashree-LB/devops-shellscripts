#!/bin/bash

# system_health.sh - Checks CPU, memory, and disk usage

echo "===== System Health Report ====="
echo "Date: $(date)"
echo

echo "CPU Load:"
uptime
echo

echo "Memory Usage:"
free -h
echo

echo "Disk Usage:"
df -h /

