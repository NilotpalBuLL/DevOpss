#!/bin/bash
# Script: backup.sh
# Purpose: Backup directories into /backup

BACKUP_DIR="/backup"
DATE=$(date +%F)
SOURCE_DIRS="/etc /home"

mkdir -p $BACKUP_DIR

for DIR in $SOURCE_DIRS
do
  BASENAME=$(basename $DIR)
  tar -czf $BACKUP_DIR/${BASENAME}_$DATE.tar.gz $DIR
done

echo "Backup completed on $DATE"
