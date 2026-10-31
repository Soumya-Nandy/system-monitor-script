#!/bin/bash
echo "=============================="
echo "    SYSTEM MONITOR LOG        "
echo "=============================="
echo "Timestamp: $(date)"
echo ""
echo "--- Disk Usage ---"
df -h / | awk 'NR==2 {print "Used: " $3 ", Available: " $4}'
echo "=============================="





