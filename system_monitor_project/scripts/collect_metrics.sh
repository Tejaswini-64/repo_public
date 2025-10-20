#!/bin/bash

mkdir -p "$(dirname "$0")/../reports"
timestamp=$(date '+%Y%m%d_%H%M')
output_file="$(dirname "$0")/../reports/metrics_${timestamp}.txt"

{
    echo "Timestamp: $(date)"
    echo "--------------------------"
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)"
    echo "--------------------------"
    echo "Memory Usage:"
    free -h
    echo "--------------------------"
    echo "Disk Usage:"
    df -h
    echo "--------------------------"
    echo "System Uptime:"
    uptime -p
    echo "--------------------------"
    echo "Load Average:"
    uptime | awk -F'load average: ' '{ print $2 }'
} > "$output_file"

