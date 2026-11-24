#!/bin/bash
# Author: Palak

echo "=============================================="
echo "Name: Palak | Roll No: 2601730017 | Date: $(date)"
echo "=============================================="

echo "CPU Model : $(lscpu | grep 'Model name' | sed 's/Model name: *//')"
echo "CPU Cores : $(nproc)"

free -h | awk '/Mem:/ {print "Memory    : Total " $2 ", Used " $3}'

echo "Top 3 processes by CPU usage:"
ps aux | sort -nrk 3,3 | head -3 | awk '{print "  " $11 " (CPU " $3 "%)"}'

echo "=============================================="
echo "Report generated successfully."
