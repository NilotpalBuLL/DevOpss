#!/bin/bash
# Script: log_cleanup.sh
# Purpose: Delete .log files older than 7 days

LOG_DIR="/var/log"
DAYS=7

if [ ! -d "$LOG_DIR" ]; then
  echo "Log directory does not exist!"
  exit 1
fi

echo "Cleaning log files older than $DAYS days from $LOG_DIR..."

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Log cleanup completed."
