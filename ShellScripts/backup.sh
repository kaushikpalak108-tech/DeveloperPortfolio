#!/bin/bash
# Author: Palak

# 1. Check that a folder was given
if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# 2. Check that the folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: folder '$SOURCE' does not exist."
    exit 1
fi

# 3. Prepare backup location and filename
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
FILE="backup_$TIMESTAMP.tar.gz"

# 4. Create the archive, then report and log the result
if tar -czf "$BACKUP_DIR/$FILE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    SIZE=$(du -h "$BACKUP_DIR/$FILE" | cut -f1)
    echo "Backup successful: $FILE (size: $SIZE)"
    echo "$TIMESTAMP - SUCCESS - $FILE" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed."
    echo "$TIMESTAMP - FAILED" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
