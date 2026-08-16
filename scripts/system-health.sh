#!/bin/bash

PROJECT_DIR="$HOME/devops-system-automation"
REPORT_DIR="$PROJECT_DIR/reports"
LOG_DIR="$PROJECT_DIR/logs"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT="$REPORT_DIR/health-report-$DATE.txt"
LOG="$LOG_DIR/health-check.log"

echo "Starting system health check..."

{
    echo "======================================"
    echo "       UBUNTU SYSTEM HEALTH CHECK"
    echo "======================================"
    echo ""
    echo "Date and Time:"
    date
    echo ""
    echo "Hostname:"
    hostname
    echo ""
    echo "Uptime:"
    uptime
    echo ""
    echo "Disk Usage:"
    df -h /
    echo ""
    echo "Memory Usage:"
    free -h
    echo ""
    echo "Top Processes:"
    ps aux --sort=-%mem | head -n 6
    echo ""
    echo "======================================"
    echo "       HEALTH CHECK COMPLETE"
    echo "======================================"
} > "$REPORT"

echo "$(date): Health check completed. Report: $REPORT" >> "$LOG"

echo "Health check complete!"
echo "Report created: $REPORT"
