#!/bin/bash

SRC="$HOME/task6/data"
DEST="$HOME/task6/backups"
DATE=$(date +%F)

mkdir -p "$DEST"

tar -czf "$DEST/backup_$DATE.tar.gz" "$SRC"

tar -tzf "$DEST/backup_$DATE.tar.gz" >/dev/null \
	&& echo "$(date): Backup Ok" \
	|| echo "$(date): Backup Failed"
