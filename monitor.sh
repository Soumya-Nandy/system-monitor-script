#!/bin/bash
echo "=============================="
echo "    SYSTEM MONITOR LOG        "
echo "=============================="
echo "Timestamp: $(date)"
echo ""
echo "--- Disk Usage ---"
df -h / | awk 'NR==2 {print "Used: " $3 ", Available: " $4}'

echo "--- Memory Usage ---"
free -h | awk 'NR==2 {print "Used: " $3 ", Free: " $4}'

echo "--- CPU Load ---"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " $2 "%"}'
echo "=============================="














