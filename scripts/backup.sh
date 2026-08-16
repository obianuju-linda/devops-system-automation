#!/bin/bash

PROJECT_DIR="$HOME/devops-system-automation"
BACKUP_DIR="$PROJECT_DIR/backups"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/devops-project-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

if tar -czf "$BACKUP_FILE" "$PROJECT_DIR/scripts"; then
    echo "Backup completed successfully."
    echo "Backup created: $BACKUP_FILE"
else
    echo "Backup failed."
fi
