#!/bin/bash
# Script: system_info.sh
# Purpose: Display basic system information and save it to a file

OUTPUT_FILE="system_info.txt"

echo "===== SYSTEM INFORMATION =====" > $OUTPUT_FILE
echo "Hostname: $(hostname)" >> $OUTPUT_FILE
echo "OS: $(uname -o)" >> $OUTPUT_FILE
echo "Kernel Version: $(uname -r)" >> $OUTPUT_FILE
echo "Architecture: $(uname -m)" >> $OUTPUT_FILE
echo "Uptime: $(uptime -p)" >> $OUTPUT_FILE
echo "Current User: $(whoami)" >> $OUTPUT_FILE
echo "Date & Time: $(date)" >> $OUTPUT_FILE

cat $OUTPUT_FILE
